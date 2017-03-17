class Photo < ApplicationRecord
  mount_uploader :img, PostImgUploader

  belongs_to :user
  has_many :galleries, through: :photoings
end
