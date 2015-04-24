class AddBookingDateToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :booking_date, :date
  end
end
