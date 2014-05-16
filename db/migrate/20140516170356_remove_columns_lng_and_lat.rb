class RemoveColumnsLngAndLat < ActiveRecord::Migration
  def change
    remove_column :locations, :lng 
    remove_column :locations, :lat
  end
end
