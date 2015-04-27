class Reservation < ActiveRecord::Base
	belongs_to :restaurant
	belongs_to :user

  # while True
  # 	time = Time.now
		#   if end_time > time
		#   	@restaurant.current_capacity = @restaurant.current_capacity + @reservation.party_size
		#   else
		#   	return
		#   end
  # end

end
