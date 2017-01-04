class ChargesController < ApplicationController
  def new
    @order_items = current_order.order_items
    render layout: 'application'
  end

  def create
    @order = Order.new(params[:order])
    assign_order_attributes

    if @order.save
    # Amount in cents
    @amount = (current_order.total * 100).to_i

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Rails Stripe customer',
      :currency    => 'Eur'
    )


  else
    flash[:notice] = "order could not be created"
    end
  end


private

  def order_params
    params.require(:order).permit(:title, :subtotal, :tax, :shipping, :total, :order_status)
  end

  def assign_order_attributes
    @order.assign_attributes(:order_status_id => 1, :subtotal => current_order.subtotal,
    :tax => current_order.tax, :shipping => current_order.shipping, :total => current_order.total )
  end

end
