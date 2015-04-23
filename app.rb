require('sinatra')
require('sinatra/reloader')
require('./lib/ana')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/answer') do
  @answer = params.fetch('first_word').ana(params.fetch('word_list'))
  erb(:answer)
end
