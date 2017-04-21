require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/anagram_antigram')
require('pry')

get('/') do
  erb(:index)
end

get('/result') do
  @first_string = params.fetch('first-string')
  @second_string = params.fetch('second-string')
  @output_message = @first_string.anagram_antigram(@second_string)
  erb(:result)
end
