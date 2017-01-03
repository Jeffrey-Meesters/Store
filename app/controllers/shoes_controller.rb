class ShoesController < ApplicationController

  def index
    @shoes = Shoe.all
  end

  def show
    @shoe = Shoe.find(params[:id])
    @order_item = current_order.order_items.new
  end

  def new
    @shoe = Shoe.new
  end

  def create
    @shoe = Shoe.new(shoe_params)

    if @shoe.save
       redirect_to @shoe
    else
       render 'new'
    end
  end

  def edit
    @shoe = Shoe.find(params[:id])
  end

  def update
    @shoe = Shoe.find(params[:id])

    if @shoe.update_attributes(shoe_params)
       redirect_to @shoe
    else
       render 'edit'
    end
  end

  def destroy
    @shoe = Shoe.find(params[:id])

    @shoe.destroy

    redirect_to shoes_path
  end

  private

    def shoe_params
      params.require(:shoe).permit(:brand, :name, :price, :description, :image_url, :color)
    end
end
