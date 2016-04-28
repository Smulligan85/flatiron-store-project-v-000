class CartsController < ApplicationController
  def show
    # if current_user.current_cart && current_user.current_cart.line_items.empty?
    #   current_user.current_cart = nil
    # end
  end

  def checkout
    @cart = Cart.find(params[:id])
      update_quantity(current_user.current_cart)
      current_user.current_cart = nil
      redirect_to cart_path(@cart)
  end

  def update_quantity(cart)
     cart.items.each do |item|
       item = Item.find_by(id: item.id)
       item.inventory -= item.quantity
       item.save
     end
  end
end
