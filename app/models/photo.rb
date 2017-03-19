class Photo < ApplicationRecord
  mount_uploader :url, PhotoUploader

  belongs_to :user
  has_many :galleries, through: :photoings

  validates :url, presence: true

  def is_owner?(other_user)
    user == other_user
  end
end
