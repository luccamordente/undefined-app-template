# encoding: utf-8


if yes? "Instalar Stylus? #{yn}".magenta

  gem_group :assets do
    gem "stylus", :require => false
  end
  bundle "install"
  ask "Se tiver dificuldades com o Stylus, coloque a versão 0.6.2 no Gemfile. Confira também o ':require => false'. Ok?\n".red


  if yes? "Instalar nib para css3 no stylus? #{yn}".magenta

    `npm install nib`

    initializer = <<-INITIALIZER
require 'stylus'
Stylus.use :nib
  INITIALIZER

    file "config/initializers/stylus.rb", initializer

  end
  puts "\n"

end