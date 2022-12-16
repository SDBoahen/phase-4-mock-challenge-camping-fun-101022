Rails.application.routes.draw do

  resources :signups

  resources :campers, only: [:index, :show, :create]

  resources :activities

  # except: ; only:

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
