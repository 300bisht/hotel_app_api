class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.integer :hotel_id
      t.integer :room_id
      t.date :check_in_date
      t.date :check_out_date
      t.timestamps
    end
  end
end
