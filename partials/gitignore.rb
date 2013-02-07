# encoding: utf-8

gitignore = <<-GITIGNORE

# Mac OS X Files
.DS_Store

# Bundler
.bundle

# Security Preventions
db/*.sqlite3
config/database.yml
config/initializers/smtp.rb

# Monitoring files
log/*
tmp/*
uploads/*

# Run Commands Files
.rvmrc
.powrc

# Vendor and Data files
pkg/*
public/uploads/*
public/clicktale/*

# Caches
.sass-cache

# Emacs Temporary Files
*~
*#
GITIGNORE

file '.gitignore', gitignore if yes? "Adicionar .gitignore padrão? \n#{indent gitignore.white, 4}\n#{indent yn}\n".magenta
say "\n\n"
