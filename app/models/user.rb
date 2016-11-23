class User < ApplicationRecord
  # attr_accessor :name, :email
  has_secure_password
end
