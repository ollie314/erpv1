class CreateBenefits < ActiveRecord::Migration
  def change
    create_table :benefits do |t|
      t.integer :code
      t.string :name
      t.text :info

      t.timestamps
    end
  end
end
