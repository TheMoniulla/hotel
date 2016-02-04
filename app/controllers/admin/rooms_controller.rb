class Admin::RoomsController < Admin::AdminController
  before_action :get_room, only: [:show, :edit, :update, :destroy]

  def new
    @room = Room.new
  end

  def index
    @rooms = Room.all
  end

  def show
  end

  def edit
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to admin_rooms_path
    else
      render :new
    end
  end

  def update
    if @room.update_attributes(room_params)
      redirect_to admin_rooms_path
    else
      render :edit
    end
  end

  def destroy
    @room.destroy
    redirect_to admin_rooms_path
  end

  private

  def get_room
    @room = Room.find(params[:id])
  end

  def room_params
    params.require(:room).permit(:name, :beds, :additional_bed, :double_bed)
  end
end
