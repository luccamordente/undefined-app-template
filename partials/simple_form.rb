if yes? "Instalar simple form? #{yn}".magenta

  gem "simple_form"
  
  bundle
  
  options = []
  options << "--bootstrap" if yes? indent "Com Twitter Bootstrap? #{yn}".red
  
  generate "simple_form:install", *options
  
  
  locale = <<-LOCALE
pt-BR:
  simple_form:
    "yes": 'Sim'
    "no": 'Não'
    required:
      text: 'Obrigatório'
      mark: '*'
      # You can uncomment the line below if you need to overwrite the whole required html.
      # When using html, text and mark won't be used.
      # html: '<abbr title="required">*</abbr>'
    error_notification:
      default_message: "Verifique os problemas abaixo:"
    # Labels and hints examples
    # labels:
    #   defaults:
    #     password: 'Password'
    #   user:
    #     new:
    #       email: 'E-mail to sign in.'
    #     edit:
    #       email: 'E-mail.'
    # hints:
    #   defaults:
    #     username: 'User name to sign in.'
    #     password: 'No special characters, please.'
LOCALE

  file "config/locales/simple_form.pt-BR.yml", locale if yes? indent "Criar tradução pt-BR? #{yn}".red
  
end
puts "\n"