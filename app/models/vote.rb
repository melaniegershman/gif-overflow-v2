class Vote < ActiveRecord::Base
  belongs_to :voteable, polymorphic: true
  belongs_to :user
  validates :user, presence: true
  validates_uniqueness_of :user_id, scope: [:voteable_type, :voteable_id]
  # validates uniqueness of user in the scope of a voteable item
    # so that one user can only vote on one item, one time
end
