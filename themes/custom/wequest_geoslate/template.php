<?php
/**
 * @file
 * Contains the theme's functions to manipulate Drupal's default markup.
 *
 * Complete documentation for this file is available online.
 * @see http://drupal.org/node/1728096
 */

/**
 * Override or insert variables into the node templates.
 *
 * @param $variables
 *   An array of variables to pass to the theme template.
 * @param $hook
 *   The name of the template being rendered ("node" in this case.)
 */
function wequestuk_default_preprocess_node(&$variables, $hook) {

  if ($variables['type'] == 'wequest_playlist' && $variables['view_mode'] == 'listing') {
	  drupal_add_js(path_to_theme() .'/js/script.video-list.js', 'file');
  }

}
