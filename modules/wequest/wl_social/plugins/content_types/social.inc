<?php
$plugin = array(
  'title' => t('Follow wl'),
  'single' => TRUE,
  'category' => t('Social'),
  'render callback' => 'wl_social_content_type_render',
);
function wl_social_content_type_render($subtype, $conf, $args, $context = NULL) {
$block = new stdClass();
$block->content = '';
$block->content = theme('wl_social', array('variables', ''));
return $block;
}
