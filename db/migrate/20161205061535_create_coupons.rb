class CreateCoupons < ActiveRecord::Migration
  def change
    create_table :coupons do |t|
    	t.text :image_url
    	t.text :description
    	t.datetime :valid_from
    	t.datetime :valid_to
    	t.references :restaurant, foreign_key: true, index: true

    	t.timestamps
    end
  end
end
