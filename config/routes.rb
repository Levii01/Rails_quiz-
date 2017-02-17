Rails.application.routes.draw do
  devise_for :users
  resources :quizzes
  get 'welcome/index'
  
  root to: 'welcome#index'
end
