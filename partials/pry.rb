# encoding: utf-8


if yes? "Instalar Pry? #{yn}".magenta

  gem_group :development, :test do
    gem 'pry'
    gem 'pry-remote'
  end
  bundle "install"

  puts "\n"

end