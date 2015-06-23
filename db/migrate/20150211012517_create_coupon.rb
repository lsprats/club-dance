class CreateCoupon < ActiveRecord::Migration
  def change
    create_table :coupons do |t|
      t.integer :code
    end
  end
end
