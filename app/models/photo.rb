class Photo < ApplicationRecord
  mount_uploader :img, PhotoUploader

  has_many :photoings, dependent: :destroy
  belongs_to :user
  has_many :galleries, through: :photoings

  validates :user, presence: true
  validates :img, presence: true

  default_scope { order(created_at: :desc) }

  def is_owner?(other_user)
    user == other_user
  end

  def url
    gallery_photo_url(self.galleries.first, self)
  end
end
