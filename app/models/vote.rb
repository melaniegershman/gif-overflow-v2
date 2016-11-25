class Vote < ActiveRecord::Base
  belongs_to :voteable, polymorphic: true
  belongs_to :user
  validates :user, presence: true
  #need to add validattion for the uniqueness of user in the scope of a voteable item
end
