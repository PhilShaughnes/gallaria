class Gallery < ApplicationRecord

  has_many :photoings
  belongs_to :user
  has_many :photos, through: :photoings

  validates :name, presence: true

  default_scope { order(created_at: :desc) }

  def pic
    photos.first && photos.first.img? ? photos.first.img.versions[:standard].url : "https://dummyimage.com/242x200/333333/fff.png&text=No+Photos!"
  end

  def is_owner?(other_user)
    user == other_user
  end

  def url
    gallery_url(self)
  end
end
