class CreateTimesheetEntries < ActiveRecord::Migration
  def change
    create_table :timesheet_entries do |t|
      t.datetime :date
      t.decimal :duration

      t.timestamps
    end
  end
end
