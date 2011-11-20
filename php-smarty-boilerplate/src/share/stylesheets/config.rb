project_type = :stand_alone
preferred_syntax = :scss

http_path = "/"
sass_dir = "."
cache_dir = ".tmp/sass-cache/"
css_dir = "../../public/static/stylesheets/"
images_dir = "../../public/static/images/"
fonts_dir = "../../public/static/fonts"
javascripts_dir = "../../public/static/scripts/"
relative_assets = true

output_style = :compressed
line_comments = false

# success callback, needs gem 'ruby-growl'
# on_stylesheet_saved do |filename|
#   %x[growlnotify --name Compass --title "Stylesheet saved" --message "Your stylesheet was compiled successfully." --host localhost --appIcon compass.app] # provided by Growl DMG
# end

# error callback
# on_stylesheet_error do |filename, message|
#   %x[afplay /System/Library/Sounds/Sosumi.aiff]
# end
