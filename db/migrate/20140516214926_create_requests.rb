class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string      :title
      t.string      :description
      t.date        :date_start
      t.date        :date_end
      t.references  :user
      t.references  :category
      t.references  :location
      
      t.timestamps
    end
  end
end
