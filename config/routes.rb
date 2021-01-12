Rails.application.routes.draw do
  get 'projects/projects'
  get 'projects/create'
  get 'projects/dashboard'
  get 'pages/index'

  root 'pages#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
