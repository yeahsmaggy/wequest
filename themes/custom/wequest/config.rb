#
# This file is only needed for Compass/Sass integration. If you are not using
# Compass, you may safely ignore or delete this file.
#
# If you'd like to learn more about Sass and Compass, see the sass/README.txt
# file for more information.
#


# Change this to :production when ready to deploy the CSS to the live server.
environment = :development
#environment = :production

# In development, we can turn on the FireSass-compatible debug_info.
firesass = false
#firesass = true


# Location of the theme's resources.
css_dir         = "css"
sass_dir        = "sass"
extensions_dir  = "sass-extensions"
images_dir      = "images"
javascripts_dir = "js"


# Require any additional compass plugins installed on your system.
#require 'ninesixty'
#require 'zen-grids'

# Assuming this theme is in sites/*/themes/THEMENAME, you can add the partials
# included with a module by uncommenting and modifying one of the lines below:
#add_import_path "../../../default/modules/FOO"
#add_import_path "../../../all/modules/FOO"
#add_import_path "../../../../modules/FOO"


##
## You probably don't need to edit anything below this.
##

# You can select your preferred output style here (can be overridden via the command line):
# output_style = :expanded or :nested or :compact or :compressed
output_style = (environment == :development) ? :expanded : :compressed

# To enable relative paths to assets via compass helper functions. Since Drupal
# themes can be installed in multiple locations, we don't need to worry about
# the absolute path to the theme from the server root.
relative_assets = true

# To disable debugging comments that display the original location of your selectors. Uncomment:
# line_comments = false

# Pass options to sass. For development, we turn on the FireSass-compatible
# debug_info if the firesass config variable above is true.
sass_options = (environment == :development && firesass == true) ? {:debug_info => true} : {}

compiletype = environment
project_path = File.dirname(__FILE__) + "/"
utils_dir = "utilities/"
utils_path =  project_path + utils_dir
 
# callback - on_sprite_saved
# http://compass-style.org/help/tutorials/configuration-reference/
on_sprite_saved do |filename|  
  if File.exists?(filename)
    if (compiletype == :production)
      # Post process sprite image
      postprocesspng(filename, utils_path)
    end
  end
end
 
# fn - Post processing for pngs
# http://compass-style.org/help/tutorials/configuration-reference/
# http://pngquant.org/
# http://advsys.net/ken/utils.htm & http://nicj.net/2012/05/15/pngoutbatch
# http://optipng.sourceforge.net/
def postprocesspng(filename, utils_path)
  if File.exists?(filename)
    sleep 1
    optimize(filename, utils_path + "pngquant/pngquant -iebug -verbose -force -ext .png 256")
    optimize(filename, utils_path + "pngout/pngoutbatch.cmd")
    optimize(filename, utils_path + "optipng/optipng -o7 -verbose")
  end
end
 
# fn - Run optimize command line for a specified script
# https://gist.github.com/2403117
def optimize(filename, script)
  if File.exists?(filename)
    sleep 1
    system script + " " + filename
  end
end




