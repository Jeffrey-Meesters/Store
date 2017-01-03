class OrderItem < ApplicationRecord
  belongs_to :shoe
  belongs_to :order
end
