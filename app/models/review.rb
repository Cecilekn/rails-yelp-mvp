class Review < ApplicationRecord
  belongs_to :restaurant
  RATES = (0..5)

  validates :content, presence: true
  validates :rating, presence: true, inclusion: { in: RATES, message: "must be an integer between 0 and 5" }, numericality: { only_integer: true }
end
