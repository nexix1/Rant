class Post < ActiveRecord::Base
	has_many :comments, dependent: :destroy #when post gets deleted, the comment will be deleted
	validates :title, presence: true, length: { minimum: 5 }
	validates :body, presence: true
end
