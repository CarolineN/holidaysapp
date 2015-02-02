class CreateHolidays < ActiveRecord::Migration
  def change
    create_table :holidays do |t|
      t.string :location
      t.float :price
      t.string :hotelName
      t.string :hotelImage
      t.integer :nights
      t.float :latitude
      t.float :longitude
      t.integer :noOfRooms

      t.timestamps
    end
  end
end
