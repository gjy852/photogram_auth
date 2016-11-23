class Photo < ActiveRecord::Base

  # user_id: presence
  validates :user_id, :presence => true

  # Photos have many comments, a comment belongs to a photo
  has_many :comments

  # Photos have many likes, a like belongs to a photo
  has_many :likes

end
