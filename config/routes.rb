Rails.application.routes.draw do
  
  resources :users do
    delete :destroy_multiple, on: :collection
  end
  root to:'users#index'
  get '/users/error', to: 'users#error'
  get '/users/confirm/:id', to: 'users#confirm'
  # users/john
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
