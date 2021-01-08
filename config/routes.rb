Rails.application.routes.draw do
  
  resources :bagasses, only: [:new, :create]
  devise_for :breweries, controllers: { registrations: 'breweries/registrations' }
  devise_for :clients, controllers: { registrations: 'clients/registrations'}
  get 'breweries/index', to: 'breweries#index', as: 'brewerie_index'
  get 'clients/index', to: 'clients#index', as: "clients_index"
  get 'deals/:brewery_id', to: 'deals#new', as:'new_deal_brewery_id'
  post 'deals/create/:brewery_id', to: 'deals#create', as:'create_deal_brewery_id' 
  root 'home#index'

  
  resources :deals 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
