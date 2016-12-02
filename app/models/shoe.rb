class Shoe < ApplicationRecord

  validates :brand, presence: true
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true

end
