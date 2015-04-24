class UserMailer < ApplicationMailer
  default from: 'ikhakoo@gmail.com'
 
  def conf_email(user)
    @user = user
    mail(to: @user.email, subject: 'Reservation Confirmation')
  end
end
