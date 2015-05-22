$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

require 'bundler/setup'
Bundler.require(:default)

require 'active_record'
require 'factory_girl'

require 'support/database_init'
require 'support/database_cleaner'

require 'support/factory_girl'
require 'factories/masters'
require 'factories/apprentices'

require 'open/dojo'
