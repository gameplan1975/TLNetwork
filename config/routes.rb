Rails.application.routes.draw do
  get 'questions/new'
  get 'questions/show'
  get 'questions/index'
  get 'questions/edit'
  devise_for :users
  resources :genres
  resources :questions
  root to: "genres#index"
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
