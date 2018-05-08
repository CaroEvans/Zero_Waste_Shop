class User < ApplicationRecord
     has_one :profile, dependent: :destroy
     has_one :store, dependent: :destroy

  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  scope(:search_term, -> (search_term) { where("LOWER(email) like ?", "%#{search_term.downcase}%")})

end
