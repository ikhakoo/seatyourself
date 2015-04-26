class Reservation < ActiveRecord::Base
	belongs_to :restaurant
	belongs_to :user

	# def end_res
 #    end_time = booking_time + 2.hours 
 #  end

  # def del_res
  # 	time = Time.now
		#   if end_time > time
		#   	current_capacity = current_capacity + party_size
		#   else
		#   	return
		#   end
  # end

end
