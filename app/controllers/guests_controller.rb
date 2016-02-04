class GuestsController < ApplicationController
  def show
    @guest = Guest.find(params[:id])
    @reservation = @guest.reservations.new
    @room_id = params[:room_id]
  end
end