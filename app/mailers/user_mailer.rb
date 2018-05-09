class UserMailer < ApplicationMailer
  default from: 'caro.evans.dev@gmail.com'

  def send_signup_email(user)
    @user = user
    @url = 'example.com'
    mail(:to => @user.email, :subject => 'Thanks for signing up')
  end
end
