class TeamsController < ApplicationController

    def index
        @teams = Team.all
    end
    
    def show
        @team = Team.find(params[:id])
    end 

    def new
        @team = Team.new
    end

    def Create
        @team = Team.new(team.params)
        if @team.save
            redirect_to "/teams", notice: "Congratz! your team has been added."
         else flash[:alert] = "Error! kinldy fill the desired fields"
        end
    end
end