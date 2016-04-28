class CartsController < ApplicationController
  def show
  end

  def checkout
    @cart = Cart.find(params[:id])
  end
end
