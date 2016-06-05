Rails.application.routes.draw do
  devise_for :users

  resource :user, only: [:update] do
    get '/dashboard' => 'users#dashboard'
  end

  get '/map' => 'home#map', as: :map

  root to: 'home#index'

  namespace "api" do
    get "facilities" => "facilities#index"
  end
end
