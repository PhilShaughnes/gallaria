class Gallery < ApplicationRecord
  belongs_to :user
  has_many :photos, through: :photoings

  validates :name, presence: true

  def pic
    photos.first.url? ? photos.first.url : "https://dummyimage.com/100x100/333333/fff.png&text=Add+Photos!"
  end
end
