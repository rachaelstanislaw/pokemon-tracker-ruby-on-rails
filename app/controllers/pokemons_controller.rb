class PokemonsController < ApplicationController
    
    def index
        @pokemons = Pokemon.all
        render json: @pokemons
    end 
    
    def show
        @pokemon = Pokemon.find(params[:id])
        render json: @pokemon.to_json({:include => :sightings})
    end
    
    def create
        @pokemon = Pokemon.create(pokemon_params)
        render json: @pokemon
    end 
    
    def update
        @pokemon = Pokemon.find(params[:id])
        @pokemon.update(pokemon_params)
        render json: @pokemon
    end 
    
    def destroy
        @pokemon = Pokemon.find(params[:id])
        @pokemon.destroy
        render json: Pokemon.all
    end
    
    private
    
    def pokemon_params
        params.require(:pokemon).permit(:common_name, :category, :pokemon_type, :evolves_into)
    end 
end
