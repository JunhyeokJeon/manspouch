# 추가
require 'capistrano/bundler' # Rails needs Bundler, right?
require 'capistrano/rails/assets'
require 'capistrano/rails/migrations'
require 'capistrano/rbenv'
require 'capistrano/rbenv_install'
require 'capistrano/unicorn_nginx'
require 'capistrano/faster_assets'
require 'capistrano/upload-config'
require 'capistrano/safe_deploy_to' 
require 'capistrano/ssh_doctor'
require 'capistrano/rails/console'
require 'capistrano/rails/collection'
require 'capistrano/rails_tail_log'

# Load DSL and Setup Up Stages
require 'capistrano/setup'

# Includes default deployment tasks
require 'capistrano/deploy'

# Includes tasks from other gems included in your Gemfile
#
# For documentation on these, see for example:
#
#   https://github.com/capistrano/rvm
#   https://github.com/capistrano/rbenv
#   https://github.com/capistrano/chruby
#   https://github.com/capistrano/bundler
#   https://github.com/capistrano/rails
#
# require 'capistrano/rvm'
# require 'capistrano/rbenv'
# require 'capistrano/chruby'
# require 'capistrano/bundler'
# require 'capistrano/rails/assets'
# require 'capistrano/rails/migrations'

# Loads custom tasks from `lib/capistrano/tasks' if you have any defined.
Dir.glob('lib/capistrano/tasks/*.rake').each { |r| import r }