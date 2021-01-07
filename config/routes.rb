Rails.application.routes.draw do
  devise_for :clients
  devise_for :breweries
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
