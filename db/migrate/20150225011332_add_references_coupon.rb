class AddReferencesCoupon < ActiveRecord::Migration
  def change
    add_reference :coupons, :user, index: true
  end
end
