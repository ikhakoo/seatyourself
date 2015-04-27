class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
	    t.string   "name"
	    t.string   "cuisine_type"
	    t.integer  "price_range"
	    t.integer  "rating"
	    t.integer  "capacity"
	    t.integer  "current_capacity"
	    t.integer  "closing"
	    t.integer  "opening"

      t.timestamps null: false
    end
  end
end
