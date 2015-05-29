class WorksController < ApplicationController
    before_action :set_work, only: [:edit, :update,:destroy]
    
    def index
        @works = Work.all
        @parttimes = Parttime.all
        @partweeks = Partweek.all
        @groups = Group.all
    end
    def new
        @work = Work.new
    end
    def create
        @work = Work.new(work_params)
        if @work.save
            redirect_to works_path
        else
            render :new
        end
    end
    def update
        if @work.update(work_params)
            redirect_to works_path
        else
            render :edit
        end
    end
    def destroy
        @work.destroy
        redirect_to works_path
    end
    def edit
    end
    private
        def set_work
            @work = Work.find(params[:id])
        end
        def work_params
            params.require(:work).permit(:partweek_id,:parttime_id,:teacher_id,:course_id,:group_id)
        end
end
