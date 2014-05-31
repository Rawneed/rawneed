set :stage, :production
set :rails_env, :production
# set :branch, 'master'
# set :server_name, 'rawneed.com www.rawneed.com'

server '23.92.21.231', user: 'rawneed_admin', port: 1022, roles: %w{web app db}, primary: true

set :enable_ssl, false
