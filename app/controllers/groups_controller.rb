class GroupsController < ApplicationController
    before_action :set_group, only: [:destroy]
    
    def index
        @groups = Group.all
        @parttimes = Parttime.all
        @partweeks = Partweek.all
    end

    def new
        @group = Group.new
    end

    def create
        @group = Group.new(group_params)
        if @group.save
            redirect_to works_path
        else
            render :new
        end
    end
    def destroy
        @group.destroy
        redirect_to works_path
    end

    private
        # Never trust parameters from the scary internet, only allow the white list through.
        def set_group
            @group = Group.find(params[:id])
        end
        def group_params
            params.require(:group).permit(:group_name)
        end
end
