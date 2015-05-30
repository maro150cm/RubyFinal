class PartweeksController < ApplicationController
    before_action :set_partweek, only: [:edit, :update,:destroy]
    def index
        @partweeks = Partweek.all
    end
    def new
        @partweek = Partweek.new
    end
    def create
        @partweek = Partweek.new(partweek_params)
        if @partweek.save
            redirect_to works_path
        else
            render :new
        end
    end
    def update
        if @partweek.update(partweek_params)
            redirect_to works_path
        else
            render :edit
        end
    end
    def destroy
        @partweek.destroy
        redirect_to works_path
    end
    def edit
    end
    private
        def set_partweek
            @partweek = Partweek.find(params[:id])
        end
        def partweek_params
            params.require(:partweek).permit(:day_number,:week_name)
        end
end
