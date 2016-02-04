class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth
      t.string :birthplace
      t.integer :telephone_number
      t.string :email
      t.timestamps
    end
  end
end
