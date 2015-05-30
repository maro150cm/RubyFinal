class TeachersController < ApplicationController
    
  def index
    @teachers = Teacher.all
  end

  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new(teacher_params)
    if @teacher.save
        redirect_to works_path
    else
        render :new
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def teacher_params
      params.require(:teacher).permit(:teach_id,:teach_name,:teach_gender,:teach_level,:addr_no,:address,:tel)
    end
end
