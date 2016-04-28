class RemoveLineItemsFromCarts < ActiveRecord::Migration
  def change
    remove_column :carts, :line_items, :string
  end
end
