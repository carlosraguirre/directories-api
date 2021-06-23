class DirectorySerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :phone_number, :address, :latitude, :longitude
end
