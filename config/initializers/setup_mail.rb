ActionMailer::Base.delivery_method = :smtp

ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => "587",
  :domain               => "gmail.com",
  :user_name            => "ikhakoo@gmail.com",
  :password             => "update-as-needed",
  :authentication       => "plain",
  :enable_starttls_auto => true
}