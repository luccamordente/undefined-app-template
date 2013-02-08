if ask "Powify it? #{yn}".magenta
  `gem install powify --no-rdoc --no-ri`
  bundle "install"
  `powify create #{@app_name}`
end
