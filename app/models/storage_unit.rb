class StorageUnit < ApplicationRecord
    # belongs_to :client
    belongs_to :staff
    validates :unit_number, uniqueness: true
end
