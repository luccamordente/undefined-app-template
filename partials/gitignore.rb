gitignore = <<-GITIGNORE

# Mac OS X Files
.DS_Store

# Bundler
.bundle
Gemfile.lock

# Database Related
db/*.sqlite3
config/database.yml

# Monitoring files
log/*
tmp/**/*
uploads/*

# Run Commands Files
.rvmrc
.powrc

# Vendor and Data files
public/uploads/*
public/clicktale/*

# Emacs Temporary Files
*~
*#
GITIGNORE

file '.gitignore', gitignore if yes? "Adicionar .gitignore padrão? \n#{indent gitignore.white, 4}\n#{indent yn}\n".magenta
say "\n\n"
