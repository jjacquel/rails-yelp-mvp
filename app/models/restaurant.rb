class Restaurant < ApplicationRecord
  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]

  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: CATEGORY }

  def average_rating
    ratings = self.reviews.pluck(:rating)
    if ratings.count > 0
      ratings.sum / ratings.count
    else
      0
    end
  end

end
