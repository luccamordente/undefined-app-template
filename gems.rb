GEMS = {}

def gem name
  if version = GEMS[name]
    super name, GEMS[name]
  else
    puts error "Gem #{name} não registrada"
  end
end



# liste as gems aqui

GEMS["simple_form"] = '~> 2.0.2'