class ReviewsController < ApplicationController
  def index
    @reviews = Review.includes(:user).order("created_at DESC")
  end

  def new
  end

  def create
    Review.create(text: review_params[:text], user_id: current_user.id)
  end

  def destroy
    review = Review.find(params[:id])
    review.destroy if review.user_id == current_user.id
  end

  def edit
    @review=Review.find(params[:id])
  end

  def update
    review = Review.find(params[:id])
    if review.user_id ==current_user.id
      review.update(review_params)
    end
  end

  def show
    @review = Review.find(params[:id])
  end


  private
  def review_params
    params.permit(:text)
  end

  def move_to_index
    redirection_to action: :index unless user_signed_in?
  end

end
