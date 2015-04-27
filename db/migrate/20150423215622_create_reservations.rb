class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
	    t.string   "name"
	    t.integer  "party_size"
	    t.integer  "restaurant_id"
	    t.date     "date"
	    t.integer  "time"
	    t.integer  "user_id"

      t.timestamps null: false
    end
  end
end
