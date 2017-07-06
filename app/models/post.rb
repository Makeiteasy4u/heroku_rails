class Post < ActiveRecord::Base
	validates :title, presence: true, length: {minimum: 2, maximum: 52}
	validates :description, presence: true, length: {minimum: 2, maximum: 300}	
	
end	