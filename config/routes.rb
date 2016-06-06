Rails.application.routes.draw do
  namespace "api" do
    get "facilities" => "facilities#index"
  end

  scope "(:locale)", locale: /en|es/ do
    devise_for :users

    resource :user, only: [:update] do
      get '/dashboard' => 'users#dashboard'
    end

    get '/map' => 'home#map', as: :map
    root to: 'home#map'
  end
end
