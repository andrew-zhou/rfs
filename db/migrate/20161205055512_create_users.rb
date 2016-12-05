class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :name
      t.boolean :blacklisted
      t.boolean :owner
      t.string :provider
      t.text :uid
      t.text :oauth_token
      t.datetime :oauth_expires_at
      t.boolean :active
 
      t.timestamps
    end
  end
end
