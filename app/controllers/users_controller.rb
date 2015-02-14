class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id:params["id"])
    # EB says: there might be a more elegant way to do this, but it seems to work
    @team_members = Team_Member.where(user_id: @user.id)
    @reviews = Review.where(team_member_id: @team_members)
  end

  def new
  end

  def create
  end

  def edit
    @user = User.find_by(id:params["id"])
  end

  def update
  end

  def destroy
  end

end
