require 'bundler'
Bundler.setup
require 'sinatra'
require 'haml'
require 'sass'
require 'compass'

set :public_folder, File.dirname(__FILE__) + '/public'

if ENV['RACK_ENV'] == 'production'
  before do
    redirect request.url.sub('http', 'https') unless request.secure?
    redirect request.url.sub(/www\./, ''), 301 if request.host =~ /^www/
  end
end

configure do
  Compass.configuration do |config|
    config.project_path = File.dirname(__FILE__)
    config.sass_dir = 'views'
  end

  set :haml, { :format => :html5 }
  set :sass, Compass.sass_engine_options
end

get "/.well-known/acme-challenge/:id" do
  "vMZ-4i9DzS0VaDGspob5LqkYuK6jXxMUS3ZnhjSAxwk.hnBafX12zBaGCgOrKNBmq4td_5N3g4XHpA-Vo-BWrhs"
end

require_relative 'routes/init'
