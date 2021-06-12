Rails.application.routes.draw do
  root 'home#index' 

  resources :home, only: %i[index] do 
    collection do
      get :calculate_cost 
    end
  end
end
