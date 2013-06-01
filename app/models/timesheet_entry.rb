class TimesheetEntry < ActiveRecord::Base
  has_one :benefit
  belongs_to :timesheet
  attr_accessible :date, :duration
end
