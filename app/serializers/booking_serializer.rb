class BookingSerializer < ActiveModel::Serializer
  attributes :id, :starting, :ending, :client_id, :storage_unit_id, :goods, :pickup_status, :delivery_status
end
