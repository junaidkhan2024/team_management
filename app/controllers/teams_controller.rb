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

    def create
        @team = Team.new(team.params)
        if @team.save
            redirect_to "/teams", notice: "Congratz! your team has been added."
         else flash[:alert] = "Error! kinldy fill the desired fields"
        end
    end

    def search
		@result = User.where("name LIKE ?", User.sanitize_sql_like(params[:query]) + "%")
	end

    def add
        @user = User.find(params[:user_id])
        @team = Team.find(params[:team_id])
        if @user.present? && @team.present?
            @team.users << @user
        end
				redirect_to team_path(@team)
    end
end