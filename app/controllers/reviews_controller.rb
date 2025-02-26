class ReviewsController < ApplicationController
  before_action :set_restaurant, only: %i[index]

  def index
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
