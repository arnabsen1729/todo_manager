class User < ApplicationRecord
  def to_pleasant_string
    "NAME: #{name} EMAIL: #{email} PASSWORD: #{password}"
  end
end
