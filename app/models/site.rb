class Site < ActiveRecord::Base

  has_many :subsites, :class_name => "Site", :foreign_key => "parent_id"
  belongs_to :parent_site, :class_name => "Site"

  attr_accessible :info, :name
end
