gem 'activerecord', '=4.2.7'
require 'active_record'
require 'mini_record'


#connect to sql database
ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'crm-web.sqlite3')

class Contact < ActiveRecord::Base

  # attr_accessor :first_name, :last_name, :email, :note
  # attr_reader :id

  field :first_name, as: :string
  field :last_name, as: :string
  field :email, as: :string
  field :note, as: :text


  def full_name
    first_name + " " + last_name
  end

end

Contact.auto_upgrade!
