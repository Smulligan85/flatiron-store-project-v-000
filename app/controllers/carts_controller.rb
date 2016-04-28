class CartsController < ApplicationController
  def show
  end

  def checkout
    @cart = current_user.current_cart
      update_quantity
      current_user.current_cart = nil
      current_user.save
      redirect_to cart_path(@cart)
  end

  def update_quantity
     current_user.current_cart.line_items.each do |line_item|
       item = Item.find_by(id: line_item.item_id)
       item.inventory -= line_item.quantity
       item.save
     end
  end
end
