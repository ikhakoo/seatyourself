class Reservation < ActiveRecord::Base
	belongs_to :restaurant
	belongs_to :user

	def end_res
		end_time = booking_time + 2.hours 
	end

end
