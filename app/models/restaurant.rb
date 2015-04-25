class Restaurant < ActiveRecord::Base
	has_many :reservations
	has_many :users, through: :reservations

	# def opening
	# 	18
	# end

	# def closing
	# 	# First hour it's not open
	# 	24 # does not include 24..25 o'clock
	# end

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

end
