Rails.application.routes.draw do
  resources :penguins
  resources :sightings
  resources :pokemons
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
