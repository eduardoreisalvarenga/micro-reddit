class Post < ActiveRecord::Base
  belongs_to :user
  validates :title, presence: true, length: { minimum: 10, maximum: 50 }
  validates :body, presence: true, length: { minimum: 30, maximum: 300 }
  validates :user_id, presence: true
end
