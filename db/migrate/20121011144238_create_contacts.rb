require_relative '../config'

# this is where you should use an ActiveRecord migration to Create Contacts.

class CreateContacts < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    create_table(:contacts) do |t|
    	t.string :first_name
    	t.string :last_name
      t.string :company_name
      t.string :email
    	t.string :phone
    end
  end
end

# in rake console, Contact.create(:first_name => "...", ...)