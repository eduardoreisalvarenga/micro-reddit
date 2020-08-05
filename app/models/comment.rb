class Comment < ActiveRecord::Base
  validates :user_name, presence: true
  validates :comment, presence: true, length: { minimum: 5, maximum: 300  }
end


