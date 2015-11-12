class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :given_name, :surname, :group, :user_id
end
