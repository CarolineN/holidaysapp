class Holiday < ActiveRecord::Base
has_many :bookings, :dependent => :destroy
has_many :reviews, :dependent => :destroy
validates :location,presence: true
validates :price,presence: true
validates :nights,presence: true
validates :noOfRooms,presence: true

	geocoded_by :location
	after_validation :geocode, :if => :location_changed?

	def self.search(search)
		search_condition = "%" + search + "%"
		find(:all, :conditions => ['location Like ?', search_condition])
	end
end
