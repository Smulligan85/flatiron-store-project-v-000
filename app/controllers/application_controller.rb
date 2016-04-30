class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # before_action :set_cart
  # #
  # def set_cart
  #   if current_user && current_user.carts.find {|cart| cart.user_id == current_user.id}
  #     current_user.current_cart = current_user.carts.find {|cart| cart.user_id == current_user.id}
  #   elsif current_user
  #     current_user.current_cart = current_user.carts.create!(user_id: current_user)
  #   end
  # end
end


      # def set_cart
      #   #if the user exists, find their cart.
      #   if current_user
      #     user_cart = current_user.carts.find {|cart| cart.user_id == current_user.id}
      #   end
      #
      #   #if the user exists and they have zero line items, set their cart to nil.
      #   if current_user && user_cart && user_cart.line_items.count == 0
      #     current_user.current_cart = nil
      #     #if the user exists and they have a cart, set it to current_cart.
      #   elsif current_user && user_cart
      #     current_user.current_cart = user_cart
      #     #if there is a user, set his cart.
      #   elsif current_user
      #     current_user.current_cart = current_user.carts.create!(user_id: current_user)
      #   end
      # end
