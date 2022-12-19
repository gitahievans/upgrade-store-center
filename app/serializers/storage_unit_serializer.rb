class StorageUnitSerializer < ActiveModel::Serializer
  attributes :id, :unit_number, :size, :price, :image_url, :staff_id, :availability
  belongs_to :booking
end
