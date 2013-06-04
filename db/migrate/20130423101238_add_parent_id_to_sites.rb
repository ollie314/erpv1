class AddParentIdToSites < ActiveRecord::Migration
  def change
    add_column :sites, :parent_id, :integer
  end
end
