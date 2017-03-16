class Gallery < ApplicationRecord
  belongs_to :user
  has_many :photos, through: :photoings
end
