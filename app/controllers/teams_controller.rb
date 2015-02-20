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
    if @team.save
      redirect_to team_members_path
    else
      render text: "You have chosen ... Poorly. Try again."
      link_to "Back to Show All Teams",teams_path,class: "btn btn-default"
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
