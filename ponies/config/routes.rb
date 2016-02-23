Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'users/index'

  devise_for :users
  devise_for :models
  resources :people
  get 'home/index'
  get 'home/pre'  
  get 'home/nav'
  
  get 'people/index'


  # get 'categories/index'  
  # get 'categories/new'    
  # get 'categories/show'  
  # get 'categories/edit'    
  # get 'categories/create'  
  # get 'categories/update'  
  # get 'categories/destroy'  


  get 'orders/show' 
  get 'orders/new'   
  get 'orders/create' 
  
  get 'users/index'  
  
  get 'components/nav'  
  
  get 'resumes/index'

  get 'resumes/new'

  get 'resumes/create'

  get 'resumes/destroy'

  resources :categories
  resources :ponies

  resources :resumes, only: [:index, :new, :create, :destroy]
  root "home#index"

end
