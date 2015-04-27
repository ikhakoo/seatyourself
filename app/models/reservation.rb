class Reservation < ActiveRecord::Base
	belongs_to :restaurant
	belongs_to :user

  # while True
  # 	time = Time.now
		#   if end_time > time
		#   	@restaurant.current_capacity = @restaurant.current_capacity + @reservation.party_size
		#     @reservation.end_time = nil
		#   else
		#   	return
		#   end
  # end

end
