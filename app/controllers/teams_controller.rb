class TeamsController < ApplicationController

  def index
    @teams = Team.all
  end

  def show
    @team = Team.find_by(id: params["id"])

  end

  def new
    @team = Team.new
  end

  def create
    team_params = params.require(:team).permit!
    @team = Team.create(team_params)
    if @team.valid?
      redirect_to new_team_member_path(team_id: @team.id)
    else
      render "new", alert: "Please fill in all fields."
      
    end
  end

  def edit
    @team = Team.find_by(id: params["id"])
    @teammembers = Team_Member.where(team_id: params["id"])
  end

  def update
    team_params = params.require(:team).permit!
    @team = Team.find_by(id: params["id"])
    @team.update(team_params)
    redirect_to teams_path
  end

  def destroy
    @team = Team.find_by(id: params["id"])
    @team.destroy
    redirect_to teams_path
  end

end
