class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_cart

  def set_cart
    # if a user exists but not cart, do, set the cart!
    if !current_user.nil? && current_user.current_cart.nil?
      current_user.current_cart = current_user.carts.create!(user_id: current_user, status: "submitted")
    end
  end
end


# returns nil if there is no user, or there is a cart.
