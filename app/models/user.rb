class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true, length: { in: 4..16 }
  validates :password, presence: true, length: { in: 6..16 }
  validates :email, presence: true, uniqueness: true
  validates :user_id, presence: true

  has_many :posts
  has_many :comments
end
