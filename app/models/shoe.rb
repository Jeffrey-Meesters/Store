class Shoe < ApplicationRecord

  validates :brand, presence: true
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :image_tag, presence: true

end
