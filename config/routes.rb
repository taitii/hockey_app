Rails.application.routes.draw do
  get "/teams", to: "teams#index"
  resources :teams

  get "/players", to: "players#index"
  resources :players

  get "/scoreboards", to: "scoreboards#index"
  resources :scoreboards
end
