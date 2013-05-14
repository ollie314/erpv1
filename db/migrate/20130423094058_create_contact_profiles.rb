class CreateContactProfiles < ActiveRecord::Migration
  def change
    create_table :contact_profiles do |t|
      t.string :name
      t.string :info

      t.timestamps
    end
  end
end
