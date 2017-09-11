Rails.application.routes.draw do
  namespace :user do
    resources :cards
  end
  resources :users
  get 'gacha/top'

  get 'gacha/execute'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
