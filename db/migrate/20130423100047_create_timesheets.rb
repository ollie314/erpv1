class CreateTimesheets < ActiveRecord::Migration
  def change
    create_table :timesheets do |t|
      t.string :title
      t.text :info
      t.date :date

      t.timestamps
    end
  end
end
