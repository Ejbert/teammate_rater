class TeamMembersController < ApplicationController

  def index
    @team_members = Team_Member.all
  end

  def show
    @team_members = Team_Member.where(team_id: params["id"])
  end

  def new
    @team_member = Team_Member.new
  end

  def create
    team_member_params = params.require(:team_member).permit!
    @team_member = Team_Member.create(team_member_params)
    if params["commit"]=="Add Another"
      #render text: params
      redirect_to new_team_member_path(team_id: params["team_member"]["team_id"])
    else
      redirect_to team_path(id: params["team_member"]["team_id"])
    end
  end




  def destroy
    render text: params
    # @teammember = Team_Member.find_by(id: params["id"])
    # @teammember.destroy
    # redirect_to teams_path
  end

end
