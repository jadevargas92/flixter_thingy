class Lesson < ActiveRecord::Base
	belongs_to :section
	has_many :photos
end
