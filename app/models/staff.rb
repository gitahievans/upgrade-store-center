class Staff < ApplicationRecord
    has_many :storage_units
    has_many :clients, through: :storage_units

    has_secure_password
    # Password_digest must be present for has_secure_password to work.
    # bcrypt gemfil has to be present for has_secure_password to work.
    # through the has_secure_password method, the folowing validations are added automatically: 
        # Password must be present on creation

        # Password length should be less than or equal to 72 bytes

        # Confirmation of password (using a XXX_confirmation attribute)

    validates :username, presence: true
    validates :email, uniqueness: true, format: { with: /\@storagecenter\.com/, message: 'Please enter admin email address'}

end
