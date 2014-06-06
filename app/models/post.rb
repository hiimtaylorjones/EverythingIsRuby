class Post < ActiveRecord::Base
	# Comment implementation - Saved for later. 
	# has_many :comments, dependent: :destroy
	validates :title, presence: true, length: { maximum: 50 }
	validates :text, presence: true, length: { minimum: 5 }
end
