# This file is used by Rack-based servers to start the application.
require 'rack-rewrite'

config.middleware.insert_before(Rack::Runtime, Rack::Rewrite) do
  r301      'www.zimlit-com-rails.herokuapp.com',   'www.zimilt.com'
end

require_relative "config/environment"

run Rails.application
Rails.application.load_server
