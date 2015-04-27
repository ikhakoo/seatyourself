class ReservationsController < ApplicationController
  def new
  	@reservation = Reservation.new
  end

  def create
  	@restaurant = load_restaurant
  	@reservation = @restaurant.reservations.build(res_params)
  	if @reservation.party_size < @restaurant.current_capacity 
        @reservation.user_id = current_user.id #set user id
        @reservation.end_time = @reservation.booking_time + 2.hours #set end time
        @restaurant.current_capacity = @restaurant.current_capacity - @reservation.party_size #set current capacity
        @reservation.save #save reservation
        redirect_to root_path, notice: 'Reservation created successfully. Please check your e-mail for confirmation'
        UserMailer.conf_email(current_user).deliver_now
    else
       redirect_to root_path notice: 'Your party size is greater than what is available. Please select a different time or venue.'
    end
  end

  def edit
  end

  def destroy
  end

  private
  def res_params
    params.require(:reservation).permit(:name, :party_size, :booking_date, :booking_time)
  end

  def load_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  
end


