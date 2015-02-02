class Holiday < ActiveRecord::Base
has_many :bookings, :dependent => :destroy

validates :location,presence: true
validates :price,presence: true
validates :nights,presence: true
validates :noOfRooms,presence: true
end
