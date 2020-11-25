class Api::V1::FoodDaysController < ApplicationController

    def create
        food_day = FoodDay.create!(food_day_params)
        # if food_day.valid?
            render json: food_day
        # end
    end
    
    def index
        food_days = FoodDay.all
        render json: food_days
    end
    
    def show
        food_day = FoodDay.find(params[:id])
        render json: food_day
    end
    
    private
    
    def food_day_params
        params.require(:food_day).permit(:the_date, :summary, :user_id)
    end
    

end
