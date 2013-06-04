class CreateMaterialOnSites < ActiveRecord::Migration
  def change
    create_table :material_on_sites do |t|
      t.integer :material_id
      t.integer :site_id
      t.integer :code
      t.string :info
      t.integer :qty
      t.integer :unit_type

      t.timestamps
    end
  end
end
