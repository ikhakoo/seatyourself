class Restaurant < ActiveRecord::Base
	has_many :reservations
	has_many :users, through: :reservations

	def availability(date, time)
		current_fullness = reservations.where(date: date, time: time).map(&:party_size).sum
		capacity - current_fullness
	end

	def hour_options
		(opening...closing).map do |hour|
			if hour >= 12
				nicehour = hour - 12
				ampm = "pm"
			else
				nicehour = hour
				ampm = "am"
			end
			if nicehour == 0
				nicehour = 12 
			end
			["#{nicehour} #{ampm}", hour]
		end
	end

end
