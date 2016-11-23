class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

# username: presence, uniqueness
validates :username, :presence => true, :uniqueness => true

# Users have many photos, a photo belongs to a user
has_many :photos

# Users have many comments, a comment belongs to a user
has_many :comments

# Users have many likes, a like belongs to a user
has_many :likes

# Users have many photos, a photo belongs to a user
belongs_to :photo

has_many :liked_photos, :through => :likes, :source => :photo
has_many :fans, :through => :likes, :source => :user

end
