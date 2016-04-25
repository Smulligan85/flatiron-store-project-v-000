class Item < ActiveRecord::Base
  has_many :line_items
  belongs_to :category

  def self.available_items
    all.where("inventory > 1")
  end
end
