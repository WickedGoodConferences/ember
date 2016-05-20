require_relative '2014/routes'
require_relative '2015/routes'

get '/' do
  erb :index
end

get '/speakers' do
  erb :speakers
end

get '/workshop/advanced-ember' do
  erb :'workshop/advanced-ember'.to_sym
end

get '/policies' do
  erb :policies
end
