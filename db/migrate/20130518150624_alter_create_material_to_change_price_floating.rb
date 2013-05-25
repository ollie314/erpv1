class AlterCreateMaterialToChangePriceFloating < ActiveRecord::Migration
  def change
    change_column :materials, :price, :decimal, :precision => 10, :scale => 2
  end
end
