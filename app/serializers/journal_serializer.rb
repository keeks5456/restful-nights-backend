class JournalSerializer < ActiveModel::Serializer
  attributes :id, :content, :user_id

  belongs_to: user
end
