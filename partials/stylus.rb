# encoding: utf-8

if yes? "Instalar nib para css3 no stylus? #{yn}".magenta

  initializer = <<-INITIALIZER
require 'stylus'

# Say to stylus use nib (CSS3 extensions for Stylus).
# Note that you must have stylus and nib installed on node
#   
#  npm install nib
# 
# on the root of app, this will install nib under 
# node_modules directory
Stylus.use :nib

INITIALIZER

  file "config/initializers/stylus.rb", initializer

end
puts "\n"
