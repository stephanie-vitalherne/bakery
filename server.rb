require 'sinatra'
require 'sendgrid-ruby'

include SendGrid

get '/' do
  erb :home
end

class Cookie
  attr_accessor :description, :price
  @@description = description
  @@price = price
end
