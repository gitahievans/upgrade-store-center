class StaffSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :"password-digest"
end
