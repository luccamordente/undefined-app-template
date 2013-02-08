# -*- coding: utf-8 -*-

GEMS = {}

def gem name, options={}
  if version = GEMS[name]
    super name, version, options
  else
    say error "Gem #{name} não registrada"
  end
end



# liste as gems aqui

# App (Development & Production)
GEMS["simple_form"] = '>= 2.0.2'

# TODO if ask "Utilizar haml ou stylus?"
GEMS["haml-rails"] = '>= 0.3.5'
GEMS["stylus"]     = '>= 0.6.2'


GEMS["bower-rails"] = '>= 0.0.4'

# App Development
GEMS["powify"]     = '>= 0.8.5'
GEMS["pry"]        = '>= 0.9.11'
GEMS["pry-remote"] = '>= 0'

# Test
GEMS["fabrication"]      = '>= 2.5'
GEMS["database_cleaner"] = '>= 0.9.1'
GEMS["forgery"]          = '>= 0.5.0'

GEMS["rspec"]            = '>= 2.11'
GEMS["rspec-rails"]      = '>= 2.11'

GEMS["guard"]            = '>= 1.5'
GEMS["guard-rspec"]      = '>= 2.1'
GEMS["rb-fsevent"]       = '>= 0.9.2'

# Deploy
GEMS["capistrano"]        = '>= 1.5'
GEMS["capistrano_colors"] = '>= 1.5'
