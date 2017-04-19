Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :streamers, :photographers
  root 'pages#index'
  PagesController.action_methods.each do |action|
      get "/#{action}", to: "pages##{action}", as: "#{action}_page"
  end

  scope '/travel' do
    KoreaController.action_methods.each do |action|
      get "/korea/#{action}", to: "korea##{action}", as: "korea_#{action}"
    end
  end
end
