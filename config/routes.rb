Rails.application.routes.draw do
  
  resources :users do
    delete :destroy_multiple, on: :collection
    delete :delete_multiple, on: :collection
  end
  root to:'users#index'
  get '/users/error', to: 'users#error'
  get '/users/confirm/:id', to: 'users#confirm'
  get '/users/multiple/display', to: 'users#multiple_display'
  get '/users/multiple/delete/:id', to: 'users#delete_multiple'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
