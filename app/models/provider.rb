class Provider < ActiveRecord::Base
  attr_accessible :address, :description, :mail, :name, :phone
end
