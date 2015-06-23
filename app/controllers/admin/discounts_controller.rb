class Admin::DiscountsController < Admin::BaseController
  respond_to :html

  private

  def discount_params
    params.require(:discount).permit(:title, :description, :count, :image, :date_ini, :date_end, :percent)
  end
end
