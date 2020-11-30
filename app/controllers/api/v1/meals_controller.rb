class Api::V1::MealsController < ApplicationController

    def create
        meal = Meal.create!(meal_params)
        # if meal.valid?
            render json: meal
        # end
    end
    
    def index
        meals = Meal.all
        render json: meals
    end
    
    def show
        meal = Meal.find(params[:id])
        render json: meal
    end
    
    private
    
    def meal_params
        params.require(:meal).permit(:name, :summary, :quantity, :speed, :calories, :food_day_id)
    end

end