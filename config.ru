$:.unshift( File::dirname( __FILE__ ).untaint )
require 'tdiary/environment'
require 'tdiary/application'
# require 'tdiary/application/extensions/omniauth'

use ::Rack::Reloader unless ENV['RACK_ENV'] == 'production'
base_dir = '/'
run TDiary::Application.new( base_dir )
