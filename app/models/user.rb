class User < ActiveRecord::Base
  has_one :artist
end
