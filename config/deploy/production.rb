set :stage, :production
set :rails_env, :production
set :branch, 'master'
set :server_name, 'www.example.com example.com'

server 'www.rawneed.com', user: 'rawneed_admin', port: 1022, roles: %w{web app db}, primary: true
