Rails.application.routes.draw do
  root 'home#index' 

  resources :home, only: %i[index]
end
