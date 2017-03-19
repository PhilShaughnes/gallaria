class User < ApplicationRecord
  has_secure_password

  has_many :galleries
  has_many :photos

  validates :username, :email, presence: true
  validates :username, uniqueness: true

  default_scope { order(created_at: :desc) }
end
