before 'deploy:assets:symlink', 'db:symlink'
namespace :db do
  desc 'Alias to deploy:migrate'
  task :migrate do 
    deploy.migrate
  end 

  desc 'Remotelly create database'
  task :create, :roles => :app, :except => { :no_release => true } do
    rake = fetch :rake, 'rake'
    rails_env = fetch :rails_env, 'production'

    run "cd #{current_path} && #{rake} db:create RAILS_ENV=#{rails_env}"
  end

  desc 'Remotelly insert seeds'
  task :seed, :roles => :app, :except => { :no_release => true } do
    rake = fetch :rake, 'rake'
    rails_env = fetch :rails_env, 'production'

    run "cd #{current_path} && #{rake} db:seed RAILS_ENV=#{rails_env}"
  end

  desc 'Remotelly symlink database.yml'
  task :symlink, :roles => :app, :except => { :no_release => true } do
    run "ln -nfs #{shared_path}/config/database.yml #{release_path}/config/database.yml"
  end

  desc 'Upload this apps database.yml to server'
  task :upload_config do
    run "mkdir -p #{shared_path}/config"
    upload 'config/database.yml', "#{shared_path}/config/database.yml"
  end
end
