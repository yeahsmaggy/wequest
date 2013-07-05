#!/bin/bash
drush dis wl_project -y
drush dis wl_skill -y
drush dis wl_resource -y
drush pm-uninstall wl_project -y
drush pm-uninstall wl_skill -y
drush pm-uninstall wl_resource -y
drush en wl_project -y
drush en wl_skill -y
drush en wl_resource -y
