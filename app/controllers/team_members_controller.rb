class TeamMembersController < ApplicationController

  def index
    @team_members = Team_Member.all
  end

  def show
    @team_members = Team_Member.where(team_id: params["id"])
  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy

  end

end
