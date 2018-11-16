Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'

  # resources :articles
  # resources :users do
    resources :pens
  # end

  root to: "welcome#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
