class AddFieldToDiscount < ActiveRecord::Migration
  def change
    add_attachment :discounts, :image
  end
end
