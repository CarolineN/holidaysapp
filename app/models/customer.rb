class Customer < ActiveRecord::Base
has_many :bookings, :dependent => :destroy
has_secure_password

validates_confirmation_of:password
validates :firstName,presence: true
validates :lastName,presence: true
validates :email,presence: true
validates :phoneNumber,presence: true
validates :passportNumber,presence: true
end
