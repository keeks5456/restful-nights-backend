class TrackerSerializer < ActiveModel::Serializer
  attributes :id, :night_times, :morning_times, :slept_times, :user_id

  belongs_to: user
end
