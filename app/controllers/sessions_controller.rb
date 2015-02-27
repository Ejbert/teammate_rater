class SessionsController < ApplicationController
  layout false
  skip_before_action :require_user

  def new

  end

  def create

    user = User.find_by(email: params["email"])
    if user && user.authenticate(params["password"])
      session["user_id"] = user.id
      redirect_to root_path, notice: "sweet, you're in!"
    else
      @error_message = "Username or Password is incorrect"
      render "new", alert: "sorry!"
    end
    

    #render text: login_email
    #render text: login_password
    # Do authentication
    # Redirect to the root_path
    # Display a notice that login was either successful or unsuccessful
  end

  def destroy
    session["user_id"] = nil
    redirect_to root_path, notice: "You've signed out"
  end

end