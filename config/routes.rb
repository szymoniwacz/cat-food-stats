Rails.application.routes.draw do
  resources :cat_foods
  root to: 'cat_foods#index'
end
