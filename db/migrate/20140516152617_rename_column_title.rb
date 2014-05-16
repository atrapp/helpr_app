class RenameColumnTitle < ActiveRecord::Migration
  def change
    rename_column :locations, :title, :name
  end
end
