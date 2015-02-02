class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :holiday_id
      t.integer :customer_id
      t.date :departureDate
      t.integer :numOfPassengers

      t.timestamps
    end
  end
end
