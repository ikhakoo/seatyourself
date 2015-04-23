class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :name
      t.integer :party_size
      t.datetime :booking_time

      t.timestamps null: false
    end
  end
end
