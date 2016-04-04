class LessonsController < ApplicationController
	def show
		@photo = Photo.new
		@course = Course.new
	end

	private
	helper_method :current_lesson
	def current_lesson
    	@current_lesson ||= Lesson.find(params[:id])
  	end
end
