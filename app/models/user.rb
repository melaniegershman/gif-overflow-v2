class User < ActiveRecord::Base
  # validates :username, uniqueness: true, presence: true
  # validates :email, presence: true, uniqueness: true
  validates_uniqueness_of :username, :email
  validates_presence_of :email, :username, :password_digest
  has_secure_password
  has_many :votes
  has_many :comments
  has_many :questions
  has_many :answers
end
