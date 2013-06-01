class MailAddress < ActiveRecord::Base
  has_one :contact_info
  attr_accessible :address, :name, :note
end
