Rails.application.routes.draw do
  resources :profiles
  devise_for :users, :controllers => { registrations: 'registrations'}
  resources :tweets
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "tweets#index"
  get "profiles/index"

end
