Rails.application.routes.draw do
  root 'home#index'
  devise_for :clients
  devise_for :breweries, controllers: { registrations: 'breweries/registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
