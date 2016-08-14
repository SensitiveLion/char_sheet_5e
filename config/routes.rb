Rails.application.routes.draw do
  root 'homes#index'
  devise_for :users
  resources :characters
  resources :games
  resources :spells
  resources :spell_castings
  resources :attacks
  resources :text_boxes
end
