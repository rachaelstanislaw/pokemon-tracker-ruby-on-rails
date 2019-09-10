class SightingsController < ApplicationController
    
    def index
        @sightings = Sighting.where(date: params[:start_date]..params[:end_date])
        render json: @sightings.to_json(:include => {:pokemon => {:only => :common_name}})
    end 
    
    def show
        @sighting = Sighting.find(params[:id])
        render json: @sighting
    end
    
    def create
        @sighting = Sighting.create(sighting_params)
        render json: @pokemon
    end 
    
    def update
        @sighting = Sighting.find(params[:id])
        @sighting.update(sighting_params)
        render json: @pokemon
    end 
    
    def destroy
        @sighting = Sighting.find(params[:id])
        @sighting.destroy
        render json: Sighting.all
    end
    
    private
    
    def sighting_params
        params.require(:sighting).permit(:date, :biome, :pokemon_id)
    end 
end
