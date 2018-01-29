# app/controllers/courses_controller.rb
class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :update, :destroy]

  #GET /courses
  def index
    @courses = Course.all
    json_response(@courses)
  end

  def create
    @course = Course.create!(course_params)
    json_response(@course, :created)
  end

  def show
    json_response(@course)
  end

  def update
    @course.update(course_params)
    head :no_content
  end

  def destroy
    @course.destroy
    head :no_content
  end


  private

  def course_params
    #whitelist that shit
    params.permit(:courseName, :clentName, :created, :modified)
  end

  def set_course
    @course = Course.find(params[:id])
  end
end
