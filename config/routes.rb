Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'v1#budgets#index'
  namespace :v1, defaults: { format: 'json' } do
    #hice index como prueba para ver si estaba recibiendo el json
    resources :budgets, only: [:show, :create, :index] do
      resources :detail_budgets, only: [:create]
    end
  end
end
