class Api::V1::SymptomsController < ApplicationController

    def create
        symptom = Symptom.create!(symptom_params)
        # if symptom.valid?
            render json: symptom
        # end
    end
    
    def index
        symptoms = Symptom.all
        render json: symptoms
    end
    
    def show
        symptom = Symptom.find(params[:id])
        render json: symptom
    end
    
    private
    
    def symptom_params
        params.require(:symptom).permit(:name, :summary, :severity, :length, :food_day_id)
    end


end