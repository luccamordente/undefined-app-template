# Check prerequisites
%w{colored}.each do |component|
  unless Gem::Specification.find_by_name component
    run "gem install #{component}"
    Gem.refresh
    Gem.activate(component)
  end
end

require "colored"


# Directories for template partials and static files
@template_root = File.expand_path(File.join(File.dirname(__FILE__)))
@partials      = File.join(@template_root, 'partials') # TODO: chamar cada um com apply
@static_files  = File.join(@template_root, 'files')

def partial file
  File.join @partials, "#{file}.rb"
end

def load_file file
  require File.join File.expand_path(File.join(File.dirname(__FILE__))), file
end

def recipe file
  puts "\n"
  apply partial file
  puts "\n"
end


load_file 'helpers'
load_file 'gems'

recipe "rvm"
recipe "gitignore"

bundle "install"

recipe "simple_form"
recipe "translate"

recipe "commit"




