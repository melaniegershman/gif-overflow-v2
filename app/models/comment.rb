class Comment < ActiveRecord::Base
  validates :body, presence: true
  belongs_to :user
  belongs_to :commentable, polymorphic: true
  has_many :votes, as: :voteable
end
