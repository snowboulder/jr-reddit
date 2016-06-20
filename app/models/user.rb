class User < ActiveRecord::Base
  has_many :posts
  has_many :comments
  validates :username, presence: true, length: { maximum: 15 },
             uniqueness: true
  validates :email, presence: true, length: { maximum: 255 },
             uniqueness: true
  validates :password, presence: true, length: { maximum: 25 }

end
