class EventsController < ApplicationController

  respond_to :html

  expose(:events){ Event.all }
  expose(:event) { Event.find(params[:id]) }

  def index; end
  def show; end

end