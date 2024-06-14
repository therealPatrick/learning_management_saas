class Course < ApplicationRecord
	has_one_attached :image do |attachable|
		attachable.variant :thumb, resize_to_limit: [100,100]
	end
	has_many :lessons
	has_and_belongs_to_many :categories
end
