class Timesheet < ActiveRecord::Base
  has_many :timesheet_entries
  belongs_to :user
  attr_accessible :date, :info, :title, :label, :quantity, :unit_price, :code, :date_entry
end
