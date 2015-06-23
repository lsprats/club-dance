class AlbumsController < ApplicationController
  expose(:albums) { Album.all }
  expose(:photos) { Album.find(params[:id]).photos }
  
  def index; end
  def show; end
end
