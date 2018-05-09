class UserMailer < ApplicationMailer

  def send_signup_email(user)
    @user = user
    mail(:to => @user.email, :subject => 'Thanks for signing up')
  end
end
