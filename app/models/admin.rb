class Admin < ApplicationRecord
    has_many :staffs
    has_secure_password
end
