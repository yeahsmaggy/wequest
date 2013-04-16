<?php

/**
 * implementation of hook_panels_layouts()
 */
// Plugin definition
$plugin = array(
  'title' => t('Geo Brick'),
  'category' => t('Layouts'),
  'icon' => 'geo_brick.png',
  'theme' => 'geo_brick',
  'regions' => array(
   'header' => t('Header'),
   'section_upper' => t('Section upper'),
   'section_lower' => t('Section lower'),
   'footer' => t('Footer'),
  ),
);
