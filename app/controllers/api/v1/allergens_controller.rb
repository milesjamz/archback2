class Api::V1::AllergensController < ApplicationController

    def create
        @allergen = Allergen.create(allergen_params)
          if @allergen.valid?
            render json: @allergen 
          else
            render json: { error: 'failed to create allergen' }, status: :not_acceptable
          end
        end
  
        def index
          allergens = Allergen.all
          render json: allergens
        end
  
        def show
          allergen = Allergen.find(params[:id])
          render json: allergen
        end
       
        private
        def allergen_params
          params.require(:allergen).permit(:name)
        end
      end



end
