class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
    	t.string :name
      t.string :address
      t.string :phone_number
      t.string :website
      t.references :user, foreign_key: true, index: true
 
      t.timestamps
    end
  end
end
