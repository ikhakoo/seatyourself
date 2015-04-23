class Reservation < ActiveRecord::Base
	belongs_to :restaurant
	belong_to :user
end
