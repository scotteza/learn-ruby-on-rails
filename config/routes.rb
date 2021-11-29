Rails.application.routes.draw do
  resources :pets
  root 'pages#home'
  get 'about', to: 'pages#about'
  resources :articles, only: [:show, :index, :new, :create, :edit, :update]

end
