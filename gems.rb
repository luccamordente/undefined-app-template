# -*- coding: utf-8 -*-

GEMS = {}

def gem name
  if version = GEMS[name]
    super name, GEMS[name]
  else
    say error "Gem #{name} não registrada"
  end
end



# liste as gems aqui

# App (Development & Production)
GEMS["simple_form"] = '>= 2.0.2'

# TODO if ask "Utilizar haml ou stylus?"
GEMS["haml"]   = '>= 3.1.7'
GEMS["stylus"] = '>= 0.6.2'


GEMS["bower-rails"] = '>= 0.0.4'

# App Development
GEMS["powify"] = '>= 0.8.5'

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
