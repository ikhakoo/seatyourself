class Reservation < ActiveRecord::Base
	belongs_to :restaurant
	belongs_to :user

	validate :restaurant_has_room_for_party,
	    		 :restaurant_is_open

	def restaurant_has_room_for_party
  	if party_size > restaurant.availability(date, time)
  		errors.add :party_size, 'is greater than what is available (#{restaurant.availability})'
    end
  end

  def restaurant_is_open
  	
  end

  # while True
  # 	time = Time.now
		#   if end_time > time && time - end_time <= 1.minute 
		#   	@restaurant.current_capacity = @restaurant.current_capacity + @reservation.party_size
		#     @reservation.end_time = nil
		#   else
		#   	return
		#   end
  # end

end
