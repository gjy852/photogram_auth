class Like < ActiveRecord::Base
# user_id: presence, uniqueness in combination with photo
validates :user_id, :presence => true, :uniqueness => { :scope => :photo}
# photo_id: presence
validates :photo_id, :presence => true

# Users have many likes, a like belongs to a user
belongs_to :user

# Photos have many likes, a like belongs to a photo
belongs_to :photo
end
