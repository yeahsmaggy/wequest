<?php
$plugin = array(
  'title' => t('Follow wequest'),
  'single' => TRUE,
  'category' => t('Social'),
  'render callback' => 'wequest_social_content_type_render',
);
function wequest_social_content_type_render($subtype, $conf, $args, $context = NULL) {
$block = new stdClass();
$block->content = '';
$block->content = theme('wequest_social', array('variables', ''));
return $block;
}