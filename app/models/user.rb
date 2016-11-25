class User < ActiveRecord::Base
  validates :username, unique: true, presence: true
  validates :email, presence: true, unique: true
  has_secure_password
  has_many :votes
  has_many :comments
  has_many :questions
end
