; wl make file for local development
core = "7.x"
api = "2"

projects[drupal][version] = "7.x"
; include the d.o. profile base
includes[] = "drupal-org.make"

; +++++ TODO modules without versions +++++

projects[vud_field][version] = "" ; TODO add version
projects[vud_field][subdir] = "custom"

projects[wequest_style][version] = "" ; TODO add version
projects[wequest_style][subdir] = "custom"

projects[wq_project][version] = "" ; TODO add version
projects[wq_project][subdir] = "custom"

projects[vud][version] = "" ; TODO add version
projects[vud][subdir] = "custom"


; wl make file for d.o. usage
core = "7.x"
api = "2"

; +++++ Modules +++++

projects[admin_menu][version] = "3.0-rc4"
projects[admin_menu][subdir] = "contrib"

projects[ctools][version] = "1.3"
projects[ctools][subdir] = "contrib"

projects[date][version] = "2.6"
projects[date][subdir] = "contrib"

projects[devel][version] = "1.3"
projects[devel][subdir] = "contrib"

projects[profiler_builder][version] = "1.0"
projects[profiler_builder][subdir] = "contrib"

projects[addressfield][version] = "1.0-beta4"
projects[addressfield][subdir] = "contrib"

projects[entityreference][version] = "1.0"
projects[entityreference][subdir] = "contrib"

projects[field_collection][version] = "1.0-beta5"
projects[field_collection][subdir] = "contrib"

projects[field_group][version] = "1.1"
projects[field_group][subdir] = "contrib"

projects[geofield][version] = "1.1"
projects[geofield][subdir] = "contrib"

projects[geolocation][version] = "1.1"
projects[geolocation][subdir] = "contrib"

projects[geolocation_proximity][version] = "2.0"
projects[geolocation_proximity][subdir] = "contrib"

projects[geolocation_views][version] = "1.x-dev"
projects[geolocation_views][subdir] = "contrib"

projects[privatemsg][version] = "1.3"
projects[privatemsg][subdir] = "contrib"

projects[imce][version] = "1.7"
projects[imce][subdir] = "contrib"

projects[og][version] = "1.5"
projects[og][subdir] = "contrib"

projects[entity][version] = "1.1"
projects[entity][subdir] = "contrib"

projects[entityreference_autocomplete][version] = "1.0"
projects[entityreference_autocomplete][subdir] = "contrib"

projects[field_inspector][version] = "1.0-beta2"
projects[field_inspector][subdir] = "contrib"

projects[geophp][version] = "1.7"
projects[geophp][subdir] = "contrib"

projects[module_filter][version] = "1.7"
projects[module_filter][subdir] = "contrib"

projects[pathauto][version] = "1.2"
projects[pathauto][subdir] = "contrib"

projects[role_delegation][version] = "1.1"
projects[role_delegation][subdir] = "contrib"

projects[taxonomy_dupecheck][version] = "1.1"
projects[taxonomy_dupecheck][subdir] = "contrib"

projects[token][version] = "1.5"
projects[token][subdir] = "contrib"

projects[xautoload][version] = "3.1"
projects[xautoload][subdir] = "contrib"

projects[panels][version] = "3.3"
projects[panels][subdir] = "contrib"

projects[registration][version] = "1.1"
projects[registration][subdir] = "contrib"

projects[relation][version] = "1.0-rc4"
projects[relation][subdir] = "contrib"

projects[rules][version] = "2.3"
projects[rules][subdir] = "contrib"

projects[voting_rules][version] = "1.0-alpha1"
projects[voting_rules][subdir] = "contrib"

projects[signup][version] = "1.x-dev"
projects[signup][subdir] = "contrib"

projects[autocomplete_deluxe][version] = "2.0-beta2"
projects[autocomplete_deluxe][subdir] = "contrib"

projects[imce_wysiwyg][version] = "1.0"
projects[imce_wysiwyg][subdir] = "contrib"

projects[jquery_update][version] = "2.3"
projects[jquery_update][subdir] = "contrib"

projects[wysiwyg][version] = "2.2"
projects[wysiwyg][subdir] = "contrib"

projects[userpoints][version] = "1.0"
projects[userpoints][subdir] = "contrib"

projects[userpoints_contrib][version] = "1.x-dev"
projects[userpoints_contrib][subdir] = "contrib"

projects[userpoints_nc][version] = "1.0"
projects[userpoints_nc][subdir] = "contrib"

projects[vimn_modules][version] = "mx-dev"
projects[vimn_modules][subdir] = "contrib"

projects[views][version] = "3.7"
projects[views][subdir] = "contrib"

projects[views_bulk_operations][version] = "3.1"
projects[views_bulk_operations][subdir] = "contrib"

projects[vote_up_down][version] = "1.0-dio"
projects[vote_up_down][subdir] = "contrib"

projects[votingapi][version] = "2.11"
projects[votingapi][subdir] = "contrib"

; +++++ Themes +++++

; bootstrap
projects[bootstrap][type] = "theme"
projects[bootstrap][version] = "2.0"
projects[bootstrap][subdir] = "contrib"

; adminimal_theme
projects[adminimal_theme][type] = "theme"
projects[adminimal_theme][version] = "1.x-dev"
projects[adminimal_theme][subdir] = "contrib"

; mothership
projects[mothership][type] = "theme"
projects[mothership][version] = "2.8"
projects[mothership][subdir] = "contrib"

; zen
projects[zen][type] = "theme"
projects[zen][version] = "5.1"
projects[zen][subdir] = "contrib"

