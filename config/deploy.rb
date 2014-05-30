lock "3.2.1"

set :application, "rawneed"
set :repo_url, "/var/git/rawneed.git"

set :deploy_to, "/var/www/#{fetch(:application)}"
set :deploy_user, "rawneed_admin"

set :rbenv_type, :user # or :system, depends on your rbenv setup
set :rbenv_ruby, "2.1.1"
set :rbenv_prefix, "RBENV_ROOT=#{fetch(:rbenv_path)} RBENV_VERSION=#{fetch(:rbenv_ruby)} #{fetch(:rbenv_path)}/bin/rbenv exec"
set :rbenv_map_bins, %w{rake gem bundle ruby rails}
set :rbenv_roles, :all # default value

set :linked_files, %w{config/database.yml}
set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

set :keep_releases, 5

namespace :deploy do
  before :deploy, "deploy:check_revision"
  after :deploy, "deploy:restart"
  after :rollback, "deploy:restart"
end
