class UsersController < ApplicationController
  def index
    @users = User.all
    @teams = Team.all
  end

  def show
    @user = User.find(params[:id])
  end

  def assign_team
    @team = Team.find(params[:user][:team_id])
    @user = User.find(params[:user_id])
    @user.teams << @team
    redirect_to users_path, notice: 'Team has been assigned successfully'
  end
end
