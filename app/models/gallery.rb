class Gallery < ApplicationRecord
  belongs_to :user
  has_many :photos, through: :photoings
  has_many :photoings

  validates :name, presence: true

  def pic
    photos.first && photos.first.url? ? photos.first.url : "https://dummyimage.com/242x200/333333/fff.png&text=No+Photos!"
  end

  def is_owner?(other_user)
    user == other_user
  end
end
