class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password_digest, :password_confirmation

  has_many :journals
  has_many :trackers
end
