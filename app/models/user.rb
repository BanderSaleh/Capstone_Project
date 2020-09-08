class User < ApplicationRecord
  has_many :products
  has_many :completeds

  has_secure_password
  validates :email, presence: true, uniqueness: true

end
