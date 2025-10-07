class Review < ApplicationRecord
  STARS = [ 1, 2, 3, 4, 5 ]

  belongs_to :movie, dependent: :destroy

  belongs_to :user

  has_many :likes, dependent: :destroy
  has_many :likers, through: :likes, source: :user

  validates :comment, length: { minimum: 4 }

  validates :stars, inclusion: {
    in: STARS,
      message: "must be between 1 and 5"
  }

  def stars_as_percent
    (stars / 5.0) * 100.0
  end

  def likes_score
    likes.sum(:value)
  end
end
