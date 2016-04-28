class User < ActiveRecord::Base
  has_many :carts, class_name: "Cart"
  belongs_to :current_cart, class_name: "Cart", foreign_key: "cart_id"
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable,
         :trackable, :validatable, :timeoutable

end
