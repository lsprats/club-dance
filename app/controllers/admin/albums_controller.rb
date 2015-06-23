class Admin::AlbumsController < Admin::BaseController
  private

    def album_params
      params.require(:album).permit(:name, :description)
    end
end

