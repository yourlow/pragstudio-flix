class User < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :liked_reviews, through: :likes, source: :review

  has_secure_password

  validates :name, presence: true
  validates :email, format: { with: /\S+@\S/ }, uniqueness: { case_sensitive: false }
end
