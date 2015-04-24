class ReservationsController < ApplicationController
  def new
  	@reservation = Reservation.new
  end

  def create
  	@restaurant = load_restaurant
  	@reservation = @restaurant.reservations.build(res_params)
  	if @reservation.save
      redirect_to root_path, notice: 'Reservation created successfully. Please check your e-mail for confirmation'
    else
      render 'restaurants/show'
    end
  end

  def edit
  end

  def destroy
  end

  private
  def res_params
    params.require(:reservation).permit(:name, :party_size, :booking_time)
  end

  def load_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end


