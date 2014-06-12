class User < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 60 }
  validates :username, presence: true, length: { minimum: 3 }, uniqueness: true
  has_secure_password
  validates :password, length: { minimum: 6 }
end
