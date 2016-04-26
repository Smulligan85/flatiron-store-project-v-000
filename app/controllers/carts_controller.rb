class CartsController < ApplicationController
  def checkout
    @cart = Cart.find(params[:id])
  end
end
