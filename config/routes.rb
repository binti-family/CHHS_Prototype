Rails.application.routes.draw do
  namespace "api" do
    get "facilities" => "facilities#index"
  end

  scope "(:locale)", locale: /en|es/ do
    devise_for :users, {
      controllers: {
        registrations: :registrations
      }
    }

    resource :user, only: [:update] do
      get '/dashboard' => 'users#dashboard'
    end

    resources :messages

    root to: 'home#map'
  end
end
