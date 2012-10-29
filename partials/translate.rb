if ask "Mudar configurações para Brasil? (locale padrão e fuso horário) #{yn}".magenta
  
  #       # config.time_zone = 'Central Time (US & Canada)'
  # para:   config.time_zone = "Brasilia"
  gsub_file "config/application.rb", /(?:#\s)?(config\.time_zone\s\=\s).*$/, '\1"Brasilia"'
  
  #       # config.i18n.default_locale = :de
  # para:   config.i18n.default_locale = :"pt-BR"
  gsub_file "config/application.rb", /(?:#\s)?(config.i18n.default_locale = ).*$/, '\1:"pt-BR"'

  # Aproveitar e baixar dados de localização do git
  get 'https://raw.github.com/svenfuchs/rails-i18n/master/rails/locale/pt-BR.yml', 'config/locales/pt-BR.yml'

end
