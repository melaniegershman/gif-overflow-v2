class Question < ActiveRecord::Base
  validates :title, presence: true
  validates :body, presence: true
  belongs_to :user
  has_one :answer #best answer
  has_many :answers
  has_many :comments, as: :commentable
  has_many :votes, as: :voteable
end
