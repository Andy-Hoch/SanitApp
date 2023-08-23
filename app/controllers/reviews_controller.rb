class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @treatment = Treatment.find(params[:treatment_id])
    @review.treatment = @treatment
    if @review.save
      redirect_to treatment_path(@treatment)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :details)
  end
end
