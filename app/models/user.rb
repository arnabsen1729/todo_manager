class User < ApplicationRecord
  validates :first_name, presence: true
  validates :email, presence: true

  has_many :todos
  has_secure_password
end
