class User < ActiveRecord::Base
  validates :username, uniqueness: true, presence: true
  validates :email, presence: true, uniqueness: true
  has_secure_password
  has_many :votes
  has_many :comments
  has_many :questions
  has_many :answers
end
