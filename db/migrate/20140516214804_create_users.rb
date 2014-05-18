class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string      :name
      t.string      :address
      t.string      :gender
      t.integer     :age
      t.string      :phone
      t.string      :email
      t.string      :description
      t.integer     :rating
      t.string      :picUrl

      t.timestamps
    end
  end
end
