class RenameColumnsLongitudeAndLatitude < ActiveRecord::Migration
  def change
    rename_column :locations, :longitude, :lng
    rename_column :locations, :latitude, :lat
  end
end
