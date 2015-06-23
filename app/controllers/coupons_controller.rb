class CouponsController < ApplicationController

  before_action :authenticate_user!

  expose(:discount) { Discount.find(params[:discount_id])  }
  expose(:coupons){ current_user.coupons }
  expose(:coupon) { coupons.find(params[:id]) }

  respond_to :html

  def create
    if discount.expired?
      return redirect_to(:back, notice: 'Descuento expirado')
    end

    if current_user.coupons.where(discount: discount).size > 1
      return redirect_to(:back, notice: 'Solo puedes obtener 2 cupones de un mismo descuento')
    end

    cup = current_user.coupons.create(discount: discount)
    redirect_to coupon_path(cup), notice: "Genial!!! Tu cupon ha sido creado."
  end

end
