require_relative '2014/routes'

get '/' do
  erb :index
end

get '/speakers' do
  erb :speakers
end
