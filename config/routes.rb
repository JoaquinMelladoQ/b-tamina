Rails.application.routes.draw do
  get 'breweries/index'
  root 'home#index'
  devise_for :breweries, controllers: { registrations: 'breweries/registrations' }
  devise_for :clients, controllers: { registrations: 'clients/registrations'}
  get 'breweries/index', to: 'breweries#index', as: 'brewerie_index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
