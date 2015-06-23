class Admin::EventsController < Admin::BaseController
  expose(:albums) { Album.all }

  respond_to :html

  private

  def event_params
    params.require(:event).permit(:title, :description, :album_id, :image, :date_init, :date_end)
  end

end
