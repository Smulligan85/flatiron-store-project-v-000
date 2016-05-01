class LineItemsController < ApplicationController
  def create
    item = Item.find(params[:item_id])
    user = current_user
    if user.current_cart.nil?
      user.current_cart = user.carts.create!(user_id: user.id)
    end
    user.current_cart.add_item(item.id).save
    user.save
    redirect_to cart_path(user.current_cart)
  end
end
