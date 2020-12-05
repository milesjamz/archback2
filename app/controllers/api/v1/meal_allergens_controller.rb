class Api::V1::MealAllergensController < ApplicationController

    def create
        meal_allergen = MealAllergen.create!(meal_allergen_params)
        # if meal_allergen.valid?
            render json: meal_allergen
        # end
    end
    
    def index
        meal_allergens = MealAllergen.all
        render json: meal_allergens
    end
    
    def show
        meal_allergen = MealAllergen.find(params[:id])
        render json: meal_allergen
    end
    
    private
    
    def meal_allergen_params
        params.require(:meal_allergen).permit(:meal_id, :allergen_id)
    end













end