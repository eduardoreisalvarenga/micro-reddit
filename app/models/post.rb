class Post < ActiveRecord::Base
  has_many :comments
  belongs_to :user
  validates :title, presence: true, length: { minimum: 4, maximum: 50 }
  validates :body, presence: true, length: { minimum: 5, maximum: 300 }
  validates :user_id, presence: true
end
