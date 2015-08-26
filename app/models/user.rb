class User < ActiveRecord::Base
  # has_one :artist,
  has_secure_password

  validates :email,
  presence: true,
  uniqueness: true
end
