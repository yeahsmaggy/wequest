; wl make file for local development
core = "7.x"
api = "2"

projects[drupal][version] = "7.x"
; include the d.o. profile base
includes[] = "drupal-org.make"

; +++++ TODO modules without versions +++++

# projects[vud_field][version] = "" ; TODO add version
# projects[vud_field][subdir] = "custom"

# projects[wequest_style][version] = "" ; TODO add version
# projects[wequest_style][subdir] = "custom"

# projects[wq_project][version] = "" ; TODO add version
# projects[wq_project][subdir] = "custom"

# projects[vud][version] = "" ; TODO add version
# projects[vud][subdir] = "custom"


; Install profile
projects[wl][type] = "profile"
projects[wl][download][type] = "git"
projects[wl][download][url] = "git@github.com:yeahsmaggy/wequest.git"
projects[wl][download][branch] = "master"
