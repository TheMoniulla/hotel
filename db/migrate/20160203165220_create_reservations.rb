class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :room_id
      t.integer :guest_id
      t.date :reservation_date
      t.timestamps
    end
  end
end
