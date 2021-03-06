Rails.application.routes.draw do
  
  get "/", to: "static#index", as: "home"
  resources :pokemons, only: [:index, :show]
  resources :trainers, only: [:index, :show, :edit, :update]
  resources :battles, only: [:show, :new, :create]
  get "/attack", to: "battles#attack", as: "attack"
  get "/counterattack", to: "battles#counterattack", as: "counterattack"

end
