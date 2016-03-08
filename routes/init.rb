require_relative '2014/routes'
require_relative '2015/routes'

get '/' do
  erb :index
end

get '/speakers' do
  erb :speakers
end
