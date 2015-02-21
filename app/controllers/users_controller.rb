class UsersController < ApplicationController

  skip_before_action :require_user, only: [:index, :show]


  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id:params["id"])
    # EB says: there might be a more elegant way to do this using has_many or belongs_to, but it seems to work
    @team_members = Team_Member.where(user_id: @user.id)
    @reviews = Review.where(team_member_id: @team_members)
  end

  def new
    @user = User.new
  end

  def create
    user_params = params.require(:user).permit!
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path
    else
      render text: "FAIL"
    end
  end

  def edit
    @user = User.find_by(id: params["id"])
  end

  def update
    user_params = params.require(:user).permit!
    @user = User.find_by(id: params["id"])
    @user.update(user_params)
    redirect_to users_path
  end

  def destroy
    @user = User.find_by(id: params["id"])
    @user.destroy
    redirect_to users_path
  end

end
