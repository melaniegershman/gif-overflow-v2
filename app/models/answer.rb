class Answer < ActiveRecord::Base
  validates :body, presence: true
  belongs_to :user
  belongs_to :question
  has_many :comments, as: :commentable
  has_many :votes, as: :voteable
end
