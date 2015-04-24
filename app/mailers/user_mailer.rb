class UserMailer < ApplicationMailer
  default from: 'seatyourselfconf@gmail.com'
 
  def conf_email(user)
    @user = user
    # @restaurant = restaurant
    mail(to: @user.email, subject: 'Reservation Confirmation')
  end
end
