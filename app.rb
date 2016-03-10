require 'bundler'
Bundler.setup
require 'sinatra'
require 'haml'
require 'sass'
require 'compass'

set :public_folder, File.dirname(__FILE__) + '/public'

# before do
  # redirect request.url.sub('http', 'https') unless request.secure?
# end

configure do
  Compass.configuration do |config|
    config.project_path = File.dirname(__FILE__)
    config.sass_dir = 'views'
  end

  set :haml, { :format => :html5 }
  set :sass, Compass.sass_engine_options
end

get "/.well-known/acme-challenge/:id" do
  "74BAtyhm34DVSSTdorjWbYw4CzdrAXFA5DG5MnZgLUs.hnBafX12zBaGCgOrKNBmq4td_5N3g4XHpA-Vo-BWrhs"
end

require_relative 'routes/init'
