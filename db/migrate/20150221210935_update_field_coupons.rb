class UpdateFieldCoupons < ActiveRecord::Migration
  def change
    remove_column :coupons, :code, :integer
    add_column    :coupons, :code, :string
  end
end
