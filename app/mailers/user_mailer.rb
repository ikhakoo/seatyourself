class UserMailer < ApplicationMailer
  default from: 'ikhakoo@gmail.com'
 
  def conf_email(user)
    @user = user
    @url  = 'http://seatyourself.git'
    mail(to: @user.email, subject: 'Reservation Confirmation')
  end
end
