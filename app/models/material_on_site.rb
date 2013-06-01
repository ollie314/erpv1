class MaterialOnSite < ActiveRecord::Base
  attr_accessible :code, :info, :material_id, :qty, :site_id, :unit_type
end
