<?php

/**
 * Implements hook_default_page_manager_pages()
 */
function wl_panels_default_page_manager_pages() {
  $pages = array();
  $default_pages = _wl_panels_default_pages();
  drupal_alter('wl_panels_pages', $default_pages);
  foreach ($default_pages as $filename => $filepath) {
    require $filepath;
    if (isset($page)) {
      $pages[$filename] = $page;
    }
  }
  return $pages;
}

/**
 * Implements hook_default_page_manager_handlers().
 */
function wl_panels_default_page_manager_handlers() {
  $handlers = array();
  $default_handlers = _wl_panels_default_handlers();
  drupal_alter('wl_panels_handlers', $default_handlers);
  foreach ($default_handlers as $filename => $filepath) {
    require $filepath;
    if (isset($handler)) {
      $handlers[$filename] = $handler;
    }
  }
  return $handlers;
}


/**
 * @return array A list of paths to panels pages, keyed by filename.
 */
function _wl_panels_default_pages() {
  $pages = array();
  $files = file_scan_directory(drupal_get_path('module', 'wl_panels'). '/pages', '/\.inc/');
  foreach ($files as $filepath => $file) {
    $pages[$file->name] = $filepath;
  }

  return $pages;
}

/**
 * @return array A list of paths to panels page handlers, keyed by filename.
 */
function _wl_panels_default_handlers() {
  $handlers = array();
  $files = file_scan_directory(drupal_get_path('module', 'wl_panels'). '/handlers', '/\.inc/');
  foreach ($files as $filepath => $file) {
    $handlers[$file->name] = $filepath;
  }

  return $handlers;
}

