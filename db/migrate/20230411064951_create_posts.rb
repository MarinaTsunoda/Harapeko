class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.integer :user_id, :null => false
      t.string :shop_id, :null => false
      t.string :shop_large_area, :null => false
      t.string :shop_midnight_meal
      t.string :name, :null => false
      t.float :star, :null => false
      t.integer :price, :null => false
      t.timestamps
    end
  end
end
