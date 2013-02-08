# encoding: utf-8


if yes? "Instalar Haml? #{yn}".magenta

  gem_group :assets do
    gem 'haml'
  end
  bundle "install"

  puts "\n"

end