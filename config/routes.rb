Blog::Application.routes.draw do
  resources :sections
  resources :students
  resources :employees
  #root to: 'articles#index'
end
