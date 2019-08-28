class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    # assigns the requested restaurant as @restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    # assigns a new restaurant as @restaurant
    @restaurant = Restaurant.new
  end

  def create
    #   creates a new Restaurant
    restaurant = Restaurant.create(restaurant_params)
    #   assigns a newly created restaurant as @restaurant
    @restaurant = restaurant

    if @restaurant.save # with valid params
      #  redirects to the created restaurant
      redirect_to restaurant_path(@restaurant)
    else # with invalid params
      #  assigns a newly created but unsaved restaurant as @restaurant
      @restaurant = restaurant
      #  re-renders the 'new' template
      render :new
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
