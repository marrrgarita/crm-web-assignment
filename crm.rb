require_relative 'contact'
require 'sinatra'

Contact.create('Mark', 'Zuckerberg', 'mark@facebook.com', 'CEO')
Contact.create('Sergey', 'Brin', 'sergey@google.com', 'Co-Founder')
Contact.create('Steve', 'Jobs', 'steve@apple.com', 'Visionary')

get '/' do
  @crm_app_name = "Margarita's Contacts"
  erb :index
end

get '/contacts' do
  erb :contacts
end

get '/contacts/new'do
  erb :new_contact
end

post '/contacts' do
  Contact.create(params[:first_name], params[:last_name], params[:emails], params[:note])
  redirect to('/contacts')
end

get '/contacts/100' do
  @contact = Contact.find(100)
  erb :show_contact
end
