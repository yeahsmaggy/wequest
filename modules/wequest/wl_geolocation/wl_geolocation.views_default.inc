<?php

/**
 * Implementation of hook_views_default_views().
 */

// Declare all the .view files in the views subdir that end in .view
function wl_geolocation_views_default_views() {
  $files = file_scan_directory(drupal_get_path('module', 'wl_geolocation') .'/views', '/\.view/');
  foreach ($files as $absolute => $file) {
    require $absolute;
    if (isset($view)) {
      $views[$file->name] = $view;
    }
  }
  return $views;
}
