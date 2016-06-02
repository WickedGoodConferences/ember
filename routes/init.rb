require_relative '2014/routes'
require_relative '2015/routes'

get '/' do
  erb :index
end

get '/speakers' do
  erb :speakers
end

get '/workshops/advanced-ember' do
  erb :'workshops/advanced-ember'.to_sym
end

get '/workshops/contributor' do
  erb :'workshops/contributor'.to_sym
end

get '/lodging' do
  erb :lodging
end

get '/faq' do
  erb :faq
end

get '/policies' do
  erb :policies
end
