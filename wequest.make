; wequest make file for d.o. usage
core = "7.x"
api = "2"

; +++++ Modules +++++

projects[admin_menu][version] = "3.0-rc3"
projects[admin_menu][subdir] = "contrib"

projects[ctools][version] = "1.2"
projects[ctools][subdir] = "contrib"

projects[date][version] = "2.6"
projects[date][subdir] = "contrib"

projects[devel][version] = "1.3"
projects[devel][subdir] = "contrib"

projects[profiler_builder][version] = "1.0-rc4"
projects[profiler_builder][subdir] = "contrib"

projects[addressfield][version] = "1.0-beta3"
projects[addressfield][subdir] = "contrib"

projects[field_group][version] = "1.1"
projects[field_group][subdir] = "contrib"

projects[geofield][version] = "1.1"
projects[geofield][subdir] = "contrib"

projects[geolocation][version] = "1.1"
projects[geolocation][subdir] = "contrib"

projects[geolocation_views][version] = "1.x-dev"
projects[geolocation_views][subdir] = "contrib"
;could use entity field query instead of contrib module

projects[mailing_list][version] = "1.0-beta1"
projects[mailing_list][subdir] = "contrib"

projects[privatemsg][version] = "1.3"
projects[privatemsg][subdir] = "contrib"

projects[imce][version] = "1.5"
projects[imce][subdir] = "contrib"

projects[og][version] = "1.4"
projects[og][subdir] = "contrib"
;organic groups, I didn't full understand it

projects[entity][version] = "1.0-rc3"
projects[entity][subdir] = "contrib"

projects[geophp][version] = "1.4"
projects[geophp][subdir] = "contrib"

projects[module_filter][version] = "1.7"
projects[module_filter][subdir] = "contrib"

projects[pathauto][version] = "1.2"
projects[pathauto][subdir] = "contrib"

projects[profile2][version] = "1.2"
projects[profile2][subdir] = "contrib"
;profiles 2 could be replaced with extra fields stuff?

projects[taxonomy_dupecheck][version] = "1.1"
projects[taxonomy_dupecheck][subdir] = "contrib"

projects[token][version] = "1.2"
projects[token][subdir] = "contrib"

projects[panels][version] = "3.3"
projects[panels][subdir] = "contrib"

projects[panels_everywhere][version] = "1.0-rc1"
projects[panels_everywhere][subdir] = "contrib"

projects[rules][version] = "2.2"
projects[rules][subdir] = "contrib"

projects[voting_rules][version] = "1.0-alpha1"
projects[voting_rules][subdir] = "contrib"

projects[signup][version] = "1.x-dev"
projects[signup][subdir] = "contrib"

projects[captcha][version] = "1.0-beta2"
projects[captcha][subdir] = "contrib"

projects[recaptcha][version] = "1.8"
projects[recaptcha][subdir] = "contrib"

projects[google_analytics][version] = "1.2"
projects[google_analytics][subdir] = "contrib"

projects[taxonomy_manager][version] = "1.0-rc1"
projects[taxonomy_manager][subdir] = "contrib"

projects[term_merge][version] = "2.0-beta2"
projects[term_merge][subdir] = "contrib"

projects[auto_capitalise_terms][version] = "2.0-beta2"
projects[auto_capitalise_terms][subdir] = "contrib"

projects[autocomplete_deluxe][version] = "2.0-beta2"
projects[autocomplete_deluxe][subdir] = "contrib"

projects[imce_wysiwyg][version] = "1.0"
projects[imce_wysiwyg][subdir] = "contrib"

projects[wysiwyg][version] = "2.1"
projects[wysiwyg][subdir] = "contrib"

projects[userpoints][version] = "1.0"
projects[userpoints][subdir] = "contrib"

projects[userpoints_contrib][version] = "1.x-dev"
projects[userpoints_contrib][subdir] = "contrib"

projects[userpoints_nc][version] = "1.0"
projects[userpoints_nc][subdir] = "contrib"

projects[views][version] = "3.4"
projects[views][subdir] = "contrib"

projects[views_bulk_operations][version] = "3.0-rc1"
projects[views_bulk_operations][subdir] = "contrib"

projects[fivestar][version] = "2.0-alpha2"
projects[fivestar][subdir] = "contrib"

projects[rate][version] = "1.4"
projects[rate][subdir] = "contrib"

projects[votingapi][version] = "2.6"
projects[votingapi][subdir] = "contrib"

; +++++ TODO modules without versions +++++

projects[lookup][version] = "" ; TODO add version
projects[lookup][subdir] = "contrib"

; +++++ Themes +++++

; adminimal_theme
projects[adminimal_theme][type] = "theme"
projects[adminimal_theme][version] = "1.x-dev"
projects[adminimal_theme][subdir] = "contrib"

; Using dev version of Zen as this version has been altered for the SMACSS methodology
projects[zen][subdir] = "contrib"
projects[zen][type] = theme
projects[zen][download][type] = "git"
projects[zen][download][url] = "http://git.drupal.org/project/zen.git"
projects[zen][download][revision] = "aea4757abc3e5aba5bce8b62064c846193d7e865"
