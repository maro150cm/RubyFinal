class ParttimesController < ApplicationController
    before_action :set_parttime, only: [:edit, :update,:destroy]
    def index
        @parttimes = Parttime.all
    end
    def new
        @parttime = Parttime.new
    end
    def create
        @parttime = Parttime.new(parttime_params)
        if @parttime.save
            redirect_to works_path
        else
            render :new
        end
    end
    def update
        if @parttime.update(parttime_params)
            redirect_to works_path
        else
            render :edit
        end
    end
    def destroy
        @parttime.destroy
        redirect_to works_path
    end
    def edit
    end
    private
        def set_parttime
            @parttime = Parttime.find(params[:id])
        end
        def parttime_params
            params.require(:parttime).permit(:part_number, :start_time,:end_time)
        end
end
