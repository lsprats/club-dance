class AddReferenceDiscount < ActiveRecord::Migration
  def change
    add_reference :coupons, :discount, index: true
  end
end
