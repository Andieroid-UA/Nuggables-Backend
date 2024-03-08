Rails.application.routes.draw do
  get 'web/bootstrap'
  scope '/' do
    post 'login', to: 'sessions#create'
  end

  resources :products, only: [:index, :show, :create, :update, :destroy]

end
