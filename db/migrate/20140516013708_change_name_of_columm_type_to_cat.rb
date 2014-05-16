class ChangeNameOfColummTypeToCat < ActiveRecord::Migration
  def change
    rename_column :locations, :type, :cat
  end
end
