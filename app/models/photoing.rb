class Photoing < ApplicationRecord
  belongs_to :gallery
  belongs_to :photo

  validates :gallery, :photo, presence: true
end
