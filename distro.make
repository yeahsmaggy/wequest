# Drush Make theory for happy profile development http://drupal.org/node/1006620
# Drush make in the world of real profile development requires an understanding of a couple of basic concepts. The first concept is to understand that you have an essential need for no less than 2 make files. The "stub" make file, and your profile's make file. These together allow easy creation and distribution of light weight essential building blocks for your profile.
# The "stub" make file is a very simple construct. It references exactly two things. First it references the core version of Drupal you intend on using, and second it references the profile you intend on bundling with your distribution.

;from wequest
core = 7.x
api = 2

projects[drupal][version] = 7.20

; Fix contextual link display when contextual links are embedded within each other
;apply patches projects[drupal][patch][1216776] = "http://drupal.org/files/1216776-contextual-links-nested-23-d7.patch"

; Install profile
projects[wequest_geoslate][type] = "profile"
projects[wequest_geoslate][download][type] = "git"
projects[wequest_geoslate][download][url] = "git@github.com:yeahsmaggy/wequest.git"
projects[wequest_geoslate][download][branch] = "master"


