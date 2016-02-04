class Admin::GuestsController < Admin::AdminController
  before_action :get_guest, only: [:show, :edit, :update, :destroy]

  def new
    @guest = Guest.new
  end

  def index
    @guests = Guest.all
  end

  def show
  end

  def edit
  end

  def create
    @guest = Guest.new(guest_params)
    if @guest.save
      redirect_to admin_guests_path
    else
      render :new
    end
  end

  def update
    if @guest.update_attributes(guest_params)
      redirect_to admin_guests_path
    else
      render :edit
    end
  end

  def destroy
    @guest.destroy
    redirect_to admin_guests_path
  end

  private

  def get_guest
    @guest = Guest.find(params[:id])
  end

  def guest_params
    params.require(:guest).permit(:last_name, :first_name, :date_of_birth, :birthplace, :telephone_number, :email)
  end
end
