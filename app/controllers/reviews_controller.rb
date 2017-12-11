class ReviewsController < ApplicationController

  before_filter :authorize

  def create

    @product = Product.find params[:product_id]
    @review = Review.new(review_params)
    @review.user = current_user
    if @review.save
      redirect_to product_path(review_params[:product_id])
    else
      redirect_to root_path
    end
  end

  private
  def review_params
    params.require(:review).permit(:description, :rating, :product_id)
  end

end
