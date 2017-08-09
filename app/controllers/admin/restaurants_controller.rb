class Admin::RestaurantsController < ApplicationController
  def edit
    find_restaurant
  end

  def update
    find_restaurant
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path(@restaurant)
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    # byebug
    @restaurant.destroy

    redirect_to restaurants_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :phone_number, :address, :category)
  end

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
