; wequest make file for local development
core = "7.x"
api = "2"

projects[drupal][version] = "7.x"
; include the d.o. profile base
includes[] = "drupal-org.make"

; +++++ TODO modules without versions +++++

projects[wequest_style][version] = "" ; TODO add version
projects[wequest_style][subdir] = "custom"

