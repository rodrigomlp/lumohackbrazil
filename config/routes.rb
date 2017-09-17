Rails.application.routes.draw do
  devise_for :users
  resources :users do
    post 'search',  :on => :collection
  end

  root to: "pages#home"

  get 'home', to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
