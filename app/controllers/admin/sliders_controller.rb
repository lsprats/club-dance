class Admin::SlidersController < Admin::BaseController

  private

    def slider_params
      params.require(:slider).permit(:image, :title, :url)
    end
end

