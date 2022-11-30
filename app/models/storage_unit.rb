class StorageUnit < ApplicationRecord
    # belongs_to :client
    belongs_to :staff
    validates :name, uniqueness: true
end
