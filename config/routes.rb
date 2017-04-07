Rails.application.routes.draw do
  devise_for :users
  resources :streamers, :photographers
  root 'pages#index'
  PagesController.action_methods.each do |action|
      get "/#{action}", to: "pages##{action}", as: "#{action}_page"
  end

  namespace :api do
    namespace :v1 do
      resources :streamers, only: [:index, :create, :destroy, :update]
      resources :photographers, only: [:index, :create, :destroy, :update]
    end
  end
end
