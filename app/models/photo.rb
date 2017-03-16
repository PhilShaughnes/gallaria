class Photo < ApplicationRecord
  belongs_to :user
  has_many :galleries, through: :photoings
end
