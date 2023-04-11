class CreateShops < ActiveRecord::Migration[6.1]
  def change
    create_table :shops do |t|
      t.string :name, :null => false
      t.string :address, :null => false
      t.string :station_name, :null => false
      t.string :open, :null => false
      t.string :close, :null => false
      t.string :tel, :null => false
      t.timestamps
    end
  end
end
