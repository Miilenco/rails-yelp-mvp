

class Restaurant < ApplicationRecord
  CATEGORIES = %w[chinese italian japanese french belgian]

  has_many :reviews, dependent: :destroy

  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: CATEGORIES }

  def rating
    return 0.0 unless reviews.count.positive?

    total = reviews.reduce(0) { |acc, review| acc + review.rating }
    total.fdiv(reviews.count).round(2)
  end
end
