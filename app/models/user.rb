class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true
  validates :password_digest, confirmation: true


  has_many :journals
  has_many :trackers


end
