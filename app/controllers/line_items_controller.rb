class LineItemsController < ApplicationController
  def create
    users_cart = set_cart
    item = Item.find(params[:item_id])

    if users_cart.nil? 
      redirect_to store_path
    else
      users_cart.line_items << users_cart.add_item(item)
      redirect_to cart_path(users_cart.id)
    end
  end
end
