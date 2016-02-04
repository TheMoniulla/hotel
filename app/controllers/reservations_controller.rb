class ReservationsController < ApplicationController
  before_action :get_guest

  def index
    @reservations = @guest.reservations
  end

  def create
    @reservation = @guest.reservations.new(reservation_params)
    if @reservation.save
      redirect_to guest_reservations_path(@guest)
    else
      render 'guests/show'
    end
  end

  private

  def get_guest
    @guest = Guest.find(params[:guest_id])
  end

  def reservation_params
    params.require(:reservation).permit(:room_id, :reservation_date)
  end
end