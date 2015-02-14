class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id:params["id"])
    @teams = @user.teams
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
