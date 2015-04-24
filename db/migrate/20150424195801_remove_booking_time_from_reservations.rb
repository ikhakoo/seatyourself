class RemoveBookingTimeFromReservations < ActiveRecord::Migration
  def change
    remove_column :reservations, :booking_time, :datetime
  end
end
