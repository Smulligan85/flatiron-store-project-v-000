class Cart < ActiveRecord::Base
  belongs_to :user
  has_many :line_items
  has_many :items, through: :line_items

  def total
    items.collect(&:price).reduce(:+)
  end

  def line_items_total
    total = Array.new

    line_items.each do |line_item|
      total << line_item.quantity * line_item.item.price
    end
    total.reduce(:+)
  end

  def add_item(item_id)
    cart_item = self.line_items.select { |lineitem| lineitem.item_id == item_id }.first
    if cart_item
      cart_item.quantity += 1
      cart_item
    else
      LineItem.new(quantity: 1, cart_id: self.id, item_id: item_id)
    end
  end
end
