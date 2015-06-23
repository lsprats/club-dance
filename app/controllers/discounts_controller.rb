class DiscountsController < ApplicationController

  expose(:discounts){ Discount.actives }
  expose(:discount) { Discount.find(params[:id]) }

  def index; end
  def show; end

end
