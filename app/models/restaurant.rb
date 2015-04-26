class Restaurant < ActiveRecord::Base
	has_many :reservations
	has_many :users, through: :reservations

	def hour_options
		(opening...closing).map do |hour|
			if hour > 12
				nicehour = hour - 12
				ampm = "pm"
			else
				nicehour = hour
				ampm = "am"
			end 
			["#{nicehour} #{ampm}", hour]
		end
	end

	# def current_cap
	# 	current_capacity = current_capacity - party_size
	# end

end
