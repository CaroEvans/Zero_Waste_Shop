class User < ApplicationRecord
     has_one :profile, dependent: :destroy
     has_one :store, dependent: :destroy

  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :send_notification

  def send_notification
      UserMailer.send_signup_email(self).deliver
  end

end
