class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   after_create :set_role
   has_one :profile
   has_one :store

  def set_role
   add_role :owner
  end

  def can_create?
   self.has_role?(:admin) || self.has_role?(:owner)
  end

  def can_update?(product)
   self.has_role?(:admin) || (self.has_role?(:owner) && product.store.user == self)
  end

  def can_delete?(product)
   self.has_role?(:admin) || (self.has_role?(:owner) && product.store.user == self) || self.has_role?(:admin)
  end

end
