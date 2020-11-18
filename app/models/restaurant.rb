class Restaurant < ApplicationRecord

  CATEGORIES = %w[chinese italian japanese french belgian]
  has_many :reviews, dependent: :destroy

  validates :category, inclusion: { in: CATEGORIES }
  validates :category, presence: true
  validates :name, presence: true
  validates :address, presence: true
end
