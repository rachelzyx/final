class ReviewsController < ApplicationController
  before_action :find_park

  def new
    @review = Review.new
  end

  def create
    review_params = params.require(:review).permit(:body, :rating)
    @review = @park.reviews.new(review_params)
    @review.user = current_user
    if @review.save
      redirect_to @park, notice: "Thanks for the review!"
    else
      render "new"
    end
  end

  private
  def find_park
    @park = Park.find(params[:park_id])
  end

end
