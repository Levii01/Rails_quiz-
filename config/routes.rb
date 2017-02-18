Rails.application.routes.draw do
  devise_for :users
  resources :quizzes
  resources :questions
  resources :answers

  get 'welcome/index'

  root to: 'welcome#index'
end
