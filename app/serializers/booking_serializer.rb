class BookingSerializer < ActiveModel::Serializer
  attributes :id, :starting, :ending, :goods, :pickup_status, :delivery_status
  belongs_to :storage_unit
end
