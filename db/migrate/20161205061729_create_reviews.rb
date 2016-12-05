class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
    	t.text :comment
    	t.references :restaurant, foreign_key: true, index: true
    	t.references :user, foreign_key: true, index: true

    	t.timestamps
    end
  end
end
