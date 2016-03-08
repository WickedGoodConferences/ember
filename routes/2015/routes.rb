get '/2015' do
  erb '2015/index'.to_sym, layout: '2015/layout'.to_sym
end

get '/2015/speakers' do
  erb '2015/speakers'.to_sym, layout: '2015/layout'.to_sym
end
