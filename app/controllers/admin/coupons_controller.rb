class Admin::CouponsController < Admin::BaseController
  expose(:discount) { Discount.find(params[:discount_id])  }
  expose(:coupons){ discount.coupons }
  expose(:coupon) { discount.coupons.find(params[:id]) }

  respond_to :html

  private

  def coupon_params
    params.require(:coupon).permit(:code, :discount_id)
  end
end
