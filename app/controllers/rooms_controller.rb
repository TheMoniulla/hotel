class RoomsController < ApplicationController
  before_action :get_guest

  def index
    @rooms = Room.all
    end

  def show
    @room = Room.find(params[:id])
  end

  def get_guest
    @guest = Guest.find(params[:guest_id])
  end
end