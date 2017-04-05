require 'sinatra'

get '/' do
  @crm_app_name = "Margarita's CRM"
  erb :index
end
