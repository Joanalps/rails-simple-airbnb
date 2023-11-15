class Flat < ApplicationRecord

  AUTHORIZED_PRICE = (1..150)
  AUTHORIZED_NUMBER = (1..10)

  validates :name, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :price_per_night, numericality: { in: AUTHORIZED_PRICE }
  validates :number_of_guests, numericality: { in: AUTHORIZED_NUMBER }
end
