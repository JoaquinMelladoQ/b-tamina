Rails.application.routes.draw do
  
  resources :bagasses, only: [:new, :create]
  root 'home#index'
  devise_for :breweries, controllers: { registrations: 'breweries/registrations' }
  devise_for :clients, controllers: { registrations: 'clients/registrations'}
  get 'breweries/index', to: 'breweries#index', as: 'brewerie_index'
  get 'clients/index', to: 'clients#index', as: "clients_index"
  resources :deals
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
