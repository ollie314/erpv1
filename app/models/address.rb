class Address < ActiveRecord::Base
  has_one :contact_info
  attr_accessible :city, :country, :name, :state, :street1, :street2, :zipcode
end
