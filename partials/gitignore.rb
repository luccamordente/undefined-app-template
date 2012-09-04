gitignore = <<-GITIGNORE
.bundle
.DS_Store
Gemfile.lock
db/*.sqlite3
log/*
tmp/**/*
config/database.yml
public/clicktale/*
uploads/*
public/uploads/*
.rvmrc
.powrc
GITIGNORE

file '.gitignore', gitignore if yes? "Adicionar .gitignore padrão? \n#{indent gitignore.white, 4}\n#{indent yn}".magenta
puts "\n"