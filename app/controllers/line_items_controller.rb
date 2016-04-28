class LineItemsController < ApplicationController
  def create
    user = current_user
    item = Item.find(params[:item_id])
    if user.current_cart.nil?
      user.current_cart = user.carts.create!(status: 'submitted')
    end
    user.current_cart.line_items << user.current_cart.add_item(item.id)
    redirect_to cart_path(user.current_cart.id)
  end
end
