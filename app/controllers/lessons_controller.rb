class LessonsController < ApplicationController
	before_action :authenticate_user!
	before_action :require_authorized_for_current_course, only: [:show]

	
	def show
		@photo = Photo.new
		@course = Course.new
	end

	private
	helper_method :current_lesson
	def current_lesson
		@current_lesson ||= Lesson.find(params[:id])
	end

	def require_authorized_for_current_course
		if current_user.enrolled_in?(current_lesson.section.course) != true
			redirect_to :back, :alert => "You must be enrolled to view the lesson!"
		end
	end

	helper_method :current_course
	def current_course
		@current_course ||= current_lesson.section.course
	end
end
