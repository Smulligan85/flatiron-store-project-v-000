class LineItemsController < ApplicationController
  def create
    item = Item.find(params[:item_id])
    current_user.current_cart = current_user.carts.create!(user_id: current_user.id)
    current_user.current_cart.add_item(item.id).save
    redirect_to cart_path(current_user.current_cart)
  end
end
