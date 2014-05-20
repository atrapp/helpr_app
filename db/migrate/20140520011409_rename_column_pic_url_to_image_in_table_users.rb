class RenameColumnPicUrlToImageInTableUsers < ActiveRecord::Migration
  def change
     rename_column :users, :picUrl, :image
  end
end
