class User < ApplicationRecord
  has_many :journals
  has_many :trackers

  has_secure_password
end
