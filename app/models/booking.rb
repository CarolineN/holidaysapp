class Booking < ActiveRecord::Base
belongs_to :customer
belongs_to :holiday

validates :numOfPassengers,presence: true
end
