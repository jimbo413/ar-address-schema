require_relative '../../db/config'

class Contact< ActiveRecord::Base
validates :company_name, :presence => true
validates :email, :uniqueness => true
validates :email, :format => {:with => /\S+@\S+\.\S{2,}/}
validates :phone, :length => {:minimum => 10}
# end


 def name
 	self.first_name + " " + self.last_name
 end
 
 def area_code
 	self.phone.match(/\A\d{3}/).to_s
 end
end