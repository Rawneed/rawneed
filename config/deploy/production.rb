set :stage, :production
set :rails_env, :production

server '23.92.21.231', user: 'rawneed_admin', port: 1022, roles: %w{web app db}, primary: true
