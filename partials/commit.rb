if ask "Commit com git? #{yn}".magenta
  
  git :init
  git :add => "."
  git :commit => "-a -m 'Initial commit'"
  
end
