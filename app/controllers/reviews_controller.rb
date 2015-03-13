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
    @review.team_member_id = Team_Member.where(user_id: params[:dummy_id], team_id: params[:team_id])
    @review.save
    if @review.valid?
      #redirect_to users_path, notice: "Review saved."
      render text: params
    else
      #redirect_to new_review_path, alert: "Please enter all fields."
      render text: params
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
