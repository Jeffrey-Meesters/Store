class Shoe < ApplicationRecord
  has_many :order_items

  default_scope { where(active: true) }

  validates :brand, presence: true
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true

end
