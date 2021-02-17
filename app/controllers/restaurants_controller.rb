class RestaurantsController < ApplicationController
  before_action :find_restaurant, only: :show

  def index
    @restaurants = Restaurant.all
  end

  def show
    @reviews = @restaurant.reviews
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to @restaurant, notice: 'Restaurant was successfully created.'
    else
      render :new
    end
  end

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
    # Only allow a trusted parameter "white list" through.
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category, :phone_number)
  end
end
