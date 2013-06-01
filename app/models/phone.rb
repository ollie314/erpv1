class Phone < ActiveRecord::Base
  has_one :contact_info
  attr_accessible :name, :note, :phone
end
