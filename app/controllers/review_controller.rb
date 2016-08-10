class ReviewsController < ApplicationController
  before_action :find_restaurant, only: [ :new, :create, :index ]

  def new
    @review = Review.new
  end

  def create
    @review = @restaurant.reviews.build(review_params)
    @review.save
  end

  def index
    @reviews = Review.all
  end


  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
