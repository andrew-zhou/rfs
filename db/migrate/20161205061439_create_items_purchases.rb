class CreateItemsPurchases < ActiveRecord::Migration
  def change
    create_table :items_purchases do |t|
      t.references :user, foreign_key: true, index: true
      t.references :item, foreign_key: true, index: true
 
      t.timestamps
    end
  end
end
