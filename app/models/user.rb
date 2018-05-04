class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   after_create :set_role
   has_one :profile

  def set_role
   add_role :owner
  end

  def can_create?
   self.has_role?(:admin) || self.has_role?(:owner)
  end

  def can_update?(post)
   self.has_role?(:admin) || (self.has_role?(:owner) && post.user == self)
  end

  def can_delete?(post)
   self.has_role?(:admin) || (self.has_role?(:owner) && post.user == self) || self.has_role?(:admin)
  end

end
