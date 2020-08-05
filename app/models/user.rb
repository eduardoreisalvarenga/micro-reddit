class User < ActiveRecord::Base
  has_many :posts
  validates :user_name, presence: true, length: { minimum: 4, maximum: 15  }, uniqueness: { case_sensitive: false  } 
end
