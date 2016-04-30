class CartsController < ApplicationController
  def show
    @cart = Cart.find(params[:id])
  end

  def checkout
    @cart = Cart.find(params[:id])
    @cart.status = "submitted"
    @cart.update_quantity
    @cart.save
    current_user.current_cart = nil
    current_user.save
    redirect_to cart_path(@cart)
  end
end
