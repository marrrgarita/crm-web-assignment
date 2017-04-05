require 'sinatra'

get '/' do
  @crm_app_name = "Margarita's CRM"
  erb :index
end

get '/contacts' do
  puts "test"
  erb :contacts
end
