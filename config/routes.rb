Rails.application.routes.draw do
  
  get "/", to: "static#index", as: "home"
  resources :pokemons, only: [:index, :show]
  resources :trainers, only: [:index, :show, :edit, :update]
  resources :battles, only: [:show, :new, :create]


end
