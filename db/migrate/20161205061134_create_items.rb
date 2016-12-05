class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
    	t.string :name
    	t.integer :cost
      t.text :description
      t.text :image_url
      t.references :restaurant, foreign_key: true, index: true
 
      t.timestamps
    end
  end
end
