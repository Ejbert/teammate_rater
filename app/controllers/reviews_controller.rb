class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def show
    
  end

  def new
    @review = Review.new
  end

  def create
    review_params = params.require(:review).permit!
    @review = Review.create(review_params)
    @review.team_member_id = Team_Member.find_by(user_id: review_params["dummy_id"], team_id: review_params["team_id"]).id
    @review.save!
    if @review.valid?
      redirect_to users_path, notice: "Review saved."
    else
      redirect_to new_review_path, alert: "Please enter all fields."
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
