class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  validates :user_name, presence: true
  validates :comment, presence: true, length: { minimum: 5, maximum: 300  }
  validates :post_id, presence: true
end


