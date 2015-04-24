class AddBookingTimeToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :booking_time, :time
  end
end
