class CreateMailAddresses < ActiveRecord::Migration
  def change
    create_table :mail_addresses do |t|
      t.string :name
      t.string :address
      t.string :note

      t.timestamps
    end
  end
end
