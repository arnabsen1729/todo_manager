class User < ApplicationRecord
  has_many :todos
  has_secure_password

  def to_pleasant_string
    "NAME: #{name} EMAIL: #{email} PASSWORD: #{password}"
  end
end
