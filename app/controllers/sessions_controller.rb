class SessionsController < ApplicationController
  layout false
  skip_before_action :require_user

def create
  @user = User.find_by(email: params["email"])
    if @user && @user.authenticate(params["password"])
      session["user id"] = @user.id

      redirect_to root_path, notice: "Welcome back"
    else
      render "new", alert: "Try again"
    end
end


def destroy
  session["user id"] = nil
  redirect_to root_path, notice: "See ya later"
end



end
