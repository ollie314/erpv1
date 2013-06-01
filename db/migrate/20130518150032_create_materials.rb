class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.string :name
      t.text :info
      t.decimal :price
      t.string :code
      t.string :label

      t.timestamps
    end
  end
end
