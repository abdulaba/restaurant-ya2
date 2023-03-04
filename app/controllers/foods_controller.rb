class FoodsController < ApplicationController

  def new
    @food = Food.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create 
    @restaurant = Restaurant.find(params[:restaurant_id])
    @food = Food.new(food_params)
    @food.restaurant_id = @restaurant.id 
    if @food.save 
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def food_params
    params.require(:food).permit(:name, :description, :price, :available, :photo)
  end
end
