class Admin::PhotosController < ApplicationController
  before_action :authenticate_admin!

  layout 'admin'

  expose(:album) { Album.find(params[:album_id])  }
  expose(:photos){ album.photos }
  expose(:photo) { album.photos.find(params[:id]) }

  layout 'admin'

  def index; end

  def show; end

  def new
    @photo = Photo.new
  end

  def create

    errors = []

    for image in photo_params[:image]
      new_photo = album.photos.build(image: image)
      errors << "Error en archivo #{image.original_filename}" unless new_photo.save
    end

    unless errors.any?
      redirect_to admin_album_photos_path(new_photo.album.id)
    else
      redirect_to new_admin_album_photo_path(new_photo.album.id), alert: errors.join(", ")
    end

  end

  def destroy
    if photo.destroy
      redirect_to admin_album_photos_path(album.id)
    end
  end

  private

  def photo_params
    params.require(:photo).permit(:image => [])
  end



end
