class User < ActiveRecord::Base
  has_secure_password
  validates :name, presence: true, uniqueness: true, length: {maximum: 50}
  validates :email, presence: true, uniqueness: true
end