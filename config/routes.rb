Rails.application.routes.draw do
  resources :users, only: [:new, :create, :show, :index]
  get '/', to: 'users#index', as:'root'
end
