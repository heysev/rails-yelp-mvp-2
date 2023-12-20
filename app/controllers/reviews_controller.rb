class ReviewsController < ApplicationController
  before_action :set_restaurant


  def new
    @review = @restaurant.review.new
  end

  def show
    @review = Review.find(params[:id])
  end

  def create
    @review = @restaurant.review.new(review_params)
    if @review.save
      redirect_to restaurants_path(@restaurant), notice: 'Review was successfully created.'
    else
      render 'new'
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end


end
