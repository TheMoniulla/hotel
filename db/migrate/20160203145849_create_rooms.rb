class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.integer :beds
      t.string :name
      t.boolean :additional_bed
      t.boolean :double_bed
      t.timestamps
    end
  end
end
