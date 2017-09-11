Rails.application.routes.draw do
  resources :user_cards
  resources :users
  get 'gacha/top'

  get 'gacha/execute'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
