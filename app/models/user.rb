class User < ApplicationRecord
  has_secure_password

  has_many :galleries
  has many :photos
end
