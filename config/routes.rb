Rails.application.routes.draw do

  resources :products do
    resources :reviews, only: %i(show create destroy)
  end
  resources :users, only: %i(new create)
  resources :sessions, only: %i(new create destroy)

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
