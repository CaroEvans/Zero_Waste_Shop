class UserMailer < ApplicationMailer

  def send_signup_email(user)
    @user = user
    mail(:to => @user.email, :subject => 'Thanks for signing up')
  end

  def send_trans_email(user)
    @user = user
    mail(:to => @user.email, :subject => "You've made a purchase from Pickle Jar")
  end
end
