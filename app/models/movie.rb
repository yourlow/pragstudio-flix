class Movie < ApplicationRecord
  RATINGS = %w[G PG PG-13 R NC-17]

  has_many :reviews, dependent: :destroy

  validates :title, :released_on, :duration, presence: true

  validates :description, length: { minimum: 25 }

  validates :total_gross, numericality: { greater_than_or_equal_to: 0 }

  validates :image_file_name, format: {
    with: /\w+\.(jpg|png)\z/i,
    message: "must be a JPG or PNG image"
  }


  validates :rating, inclusion: { in: RATINGS }

  def average_stars
    num_of_reviews = reviews.count

    return 0.0 if num_of_reviews <= 0

    (reviews.sum(:stars).to_f / num_of_reviews.to_f).round(2)
  end



  def flop?
    total_gross < 250_000_000
  end
end
