class ClientSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :"password-digest", :phone_number
end
