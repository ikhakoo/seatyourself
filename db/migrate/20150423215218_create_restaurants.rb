class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :cuisine_type
      t.integer :price_range
      t.integer :rating

      t.timestamps null: false
    end
  end
end
