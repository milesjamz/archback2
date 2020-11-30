class Api::V1::DrinksController < ApplicationController

    def create
        drink = Drink.create!(drink_params)
        # if drink.valid?
            render json: drink
        # end
    end
    
    def index
        drinks = Drink.all
        render json: drinks
    end
    
    def show
        drink = Drink.find(params[:id])
        render json: drink
    end
    
    private
    
    def drink_params
        params.require(:drink).permit(:quantity, :food_day_id, :drink_type)
    end

end