class Reservation < ActiveRecord::Base
  validates :guest_id, :room_id, :reservation_date, presence: true
  validates :room_id, uniqueness: { scope: :reservation_date, message: 'This room is unavailable' }

  belongs_to :guest
  belongs_to :room
end