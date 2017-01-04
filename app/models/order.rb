class Order < ApplicationRecord
  belongs_to :order_status
  has_many :order_items
  before_validation :set_order_status
  before_save :update_subtotal

  def subtotal
    order_items.collect { |oi| oi.valid? ? (oi.quantity.to_i * oi.unit_price.to_f) : 0 }.sum
  end

  def shipping
    order_items.collect { |oi| oi.valid? ? (oi.quantity.to_i * oi.unit_price * 0.05).round(2) : 0 }.sum
  end

  def tax
    (subtotal * 0.21).round(2)
  end

  def total
    (subtotal + shipping + tax).round(2)
  end

private
    def set_order_status
      self.order_status_id = 1
    end

    def update_subtotal
      self[:subtotal] = subtotal
    end
end
