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
    if @team_member.valid?
      #render text: team_member_params
      redirect_to team_path
    else
      render "new", alert: "Please fill in all fields." 
    end
  end



  def edit

  end

  def update

  end

  def destroy

  end

end
