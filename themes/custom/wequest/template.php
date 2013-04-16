<?php
/**
 * @file
 * Contains the theme's functions to manipulate Drupal's default markup.
 *
 * Complete documentation for this file is available online.
 * @see http://drupal.org/node/1728096
 */

function wequestuk_preprocess_panels_pane(&$variables) {
  //print_r($variables);
  //dpm('panels pane template: panels-pane--' . $variables['pane']->type . '--' . $variables['pane']->subtype . '.tpl.php');

  if ($variables['display']->layout == 'megamenu') {
	  $variables['classes_array'] = array('mega-menu-custom');
	  $variables['title_attributes_array']['class'] = array('mega-menu-content-title');
	  if ($variables['pane']->subtype == 'menu-menu-music' || $variables['pane']->subtype == 'menu-menu-shows' || $variables['pane']->subtype == 'menu-menu-news' || $variables['pane']->subtype == 'menu-menu-pictures') {
		  $variables['classes_array'] = array('contextual-links-region mega-menu-menu');
	  }
  }

	// Add correct classes to the searchbox panes
	if ($variables['pane']->subtype == 'views--exp-solr_search-panel_pane_1' || $variables['pane']->subtype == 'views--exp-artist_a_to_z-panel_pane_1' || $variables['pane']->subtype == 'views--exp-shows_a_to_z-panel_pane_1' || $variables['pane']->subtype == 'views-9ac7e1c759e67f68f19f8a0b5d7004ea' || $variables['pane']->subtype == 'views-d7844b959d0331f4686e184e535febcb' || $variables['pane']->subtype == 'views-b7d8d8d95cca5f2e1aa8fc6f9b05f78c') {
		$variables['classes_array'] = array('searchbox', 'searchbox--content');
		if ($variables['pane']->panel == 'header_second' || $variables['pane']->panel == 'header_search') {
			$variables['classes_array'] = array('searchbox', 'searchbox--header');
		}
		if ($variables['pane']->panel == 'footer_side' || $variables['pane']->panel == 'footer_search') {
			$variables['classes_array'] = array('searchbox', 'searchbox--footer');
		}
	}

}

/**
 * Override or insert variables into the page templates.
 *
 * @param $variables
 *   An array of variables to pass to the theme template.
 * @param $hook
 *   The name of the template being rendered ("page" in this case.)
 */
function wequestuk_preprocess_page(&$variables, $hook) {

	$variables['page_title_classes'] = '';
	if (is_numeric(arg(1))) {
		$node = node_load(arg(1));
		//print_r($node);
		// Add class to page title if viewing a playlist node
		if (node_is_page($node) && $node->type == 'wequest_playlist') {
			$variables['page_title_classes'] = ' element-invisible';
		}
	}

}

/**
 * Implementation of hook_form_alter()
 */
function wequestuk_form_alter(&$form, &$form_state, $form_id) {
	// Solr site searchbox
	if ($form_id == 'views_exposed_form') {
		if (isset($form['keywords']) || isset($form['search']) || (isset($form['filter']) && $form['#id'] == 'views-exposed-form-news-archive-listing-panel-pane-3')) {
			// Add placeholder text using HTML5 & CSS class to textfield
			$form['keywords']['#attributes'] = array('placeholder' => t('Search'), 'class' => array('searchbox-input'));
			$form['search']['#attributes'] = array('class' => array('searchbox-input'));
			$form['filter']['#attributes'] = array('class' => array('searchbox-input'));
			// Add class to submit button
			$form['submit']['#attributes'] = array('class' => array('searchbox-bttn'));
			array_unshift($form['#theme'], 'views_exposed_form__searchbox');
		}
		else {
			array_unshift($form['#theme'], 'views_exposed_form__default');
		}

		// News archive
		if (isset($form['filter']) && $form['#id'] != 'views-exposed-form-news-archive-listing-panel-pane-3') {
			$form['filter']['#attributes'] = array('class' => array('element-invisible'));
		}
	}
}

function wequestuk_preprocess_wequest_carousel_video_item(&$vars) {
  if (isset($vars['image_uri'])) {
    $vars['image'] = theme('image_style', array('style_name' => 'thumbnail_w140_h105', 'path' => $vars['image_uri']));
  }
}
