class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.string :name
      t.string :phone
      t.string :note

      t.timestamps
    end
  end
end
