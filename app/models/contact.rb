class Contact < ActiveRecord::Base
  has_many :mail_addresses
  has_many :phones
  has_many :addresses
  has_one :contact_profile
  attr_accessible :active, :firstname, :lastname
end
