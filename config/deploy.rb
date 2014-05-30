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

# which config files should be copied by deploy:setup_config
# see documentation in lib/capistrano/tasks/setup_config.cap
# for details of operations
set :config_files, %w( nginx.conf unicorn.rb unicorn_init.sh)

# which config files should be made executable after copying
# by deploy:setup_config
set :executable_config_files, %w( unicorn_init.sh)


# set(:symlinks, [
#  {
#    source: "nginx.conf",
#    link: "/etc/nginx/sites-enabled/#{fetch(:application)}"
#  },
#  {
#    source: "unicorn_init.sh",
#    link: "/etc/init.d/unicorn_#{fetch(:application)}"
#  }
# ])

namespace :deploy do
#  before 'deploy:setup_config', 'nginx:remove_default_vhost'
#  after 'deploy:setup_config', 'nginx:reload'
  before :deploy, "deploy:check_revision"
  after :deploy, "deploy:restart"
  after :rollback, "deploy:restart"
end
