class CoursesController < ApplicationController
    
  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    if @course.save
        redirect_to works_path
    else
        render :new
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def course_params
      params.require(:course).permit(:course_id,:course_name,:learn_point,:entity_point,:learn_year,:year_part,:course_kind)
    end
end
