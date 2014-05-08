require 'bundler'
Bundler.setup
require 'sinatra'
require 'haml'
require 'sass'
require 'compass'

set :public_folder, File.dirname(__FILE__) + '/public'

configure do
  Compass.configuration do |config|
    config.project_path = File.dirname(__FILE__)
    config.sass_dir = 'views'
  end

  set :haml, { :format => :html5 }
  set :sass, Compass.sass_engine_options
end

get '/' do
  haml :index
end

get '/schedule' do
  haml :schedule
end

get '/robin-ward' do
  haml :robin_ward
end

get '/joe-fiorini' do
  haml :joe_fiorini
end

get '/erik-bryn' do
  haml :erik_bryn
end

get '/luke-melia' do
  haml :luke_melia
end

get '/robert-jackson' do
  haml :robert_jackson
end

get '/dan-gebhardt' do
  haml :dan_gebhardt
end

get '/katie-gengler' do
  haml :katie_gengler
end

get '/phil-renaud' do
  haml :phil_renaud
end

get '/edward-faulkner' do
  haml :edward_faulkner
end
