class LineItemsController < ApplicationController
  def create
    user_cart = current_user.current_cart
    item = Item.find(params[:item_id])

    if current_user && !user_cart.nil?
      user_cart.add_item(item.id).save
      redirect_to cart_path(set_cart)
    else
      redirect_to store_path
    end
  end
end
