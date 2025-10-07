class Like < ApplicationRecord
  belongs_to :user
  belongs_to :review

  validates :value, inclusion: { in: [ 1, -1 ], message: "must be 1 or -1" }
end
