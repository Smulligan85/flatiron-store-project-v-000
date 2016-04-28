class AddLineItemsToCarts < ActiveRecord::Migration
  def change
    add_column :carts, :line_items, :string
  end
end
