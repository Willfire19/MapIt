class AddMapIdToNode < ActiveRecord::Migration
  def change
  	add_column :nodes, :map_id, :integer
  end
end
