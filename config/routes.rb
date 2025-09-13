Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'home#index'
  resources :facts do
    get :admin, on: :collection
  end
  resources :paragraphs do
    get :admin, on: :collection
  end
  resources :riddles do
    get :admin, on: :collection
  end
end
