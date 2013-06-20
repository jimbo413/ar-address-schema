require_relative 'contact'
require_relative '../../db/config.rb'

p contact = Contact.create

p con = Contact.new

p con

p con.save

p con.errors

