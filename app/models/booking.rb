class Booking < ApplicationRecord
    belongs_to :client
    belongs_to :storage_unit

    validates :storage_unit_id, uniqueness: true
end
