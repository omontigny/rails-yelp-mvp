class Restaurant < ApplicationRecord

  CATEGORIES = %w[chinese italian japanese french belgian]
  has_many :reviews, dependent: :destroy

  validates :category, inclusion: { in: CATEGORIES }
  validates :category, presence: true

  validates :phone_number, format: { with: /\b0[1-9] ?-?(\d{2} ?-?){3}\d{2}|\+33 ?[1-9] ?-?(\d{2} ?-?){3}\d{2}/,
    message: "Format allowed : '0665363636', '06 65 36 36 36', '06-65-36-36-36', '+336 65 36 36 36', '+33 6 65 36 36 36'" }
    # Match : "0665363636", "06 65 36 36 36", "06-65-36-36-36", +336 65 36 36 36", "+33 6 65 36 36 36"
    # No Match, "06 65 36 36", "+336 65 36 36"
  validates :name, presence: true
  validates :address, presence: true
end
