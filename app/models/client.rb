class Client < ApplicationRecord
    has_many :bookings
    has_many :storage_units
    has_many :staff, through: :storage_units

    has_secure_password

    validates :username, presence: true, uniqueness: true
    
    validates :email, uniqueness: true 
end
