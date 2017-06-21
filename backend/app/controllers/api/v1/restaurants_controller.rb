class Api::V1::RestaurantsController < ApplicationController

  def index
    restaurants = Restaurant.all
    render json: restaurants, status: 200
  end

  def show
    restaurant = Restaurant.find(params[:id])
    render json: restaurant, status: 200
  end

end
