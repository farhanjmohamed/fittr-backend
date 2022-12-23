class User < ApplicationRecord
  has_secure_password
  has_one :closet
  has_many :items through: :closet
  validates :email, presence: true, uniqueness: true
end
