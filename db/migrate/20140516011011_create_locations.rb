class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string      :title
      t.string      :address
      t.string      :longitude
      t.string      :latitude
      t.string      :type
      t.boolean     :public
      
      t.timestamps
    end
  end
end
