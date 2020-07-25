Rails.application.routes.draw do
  get 'players/new'
  get 'players/edit'
  get 'players/show'
  get 'players/update'
  get 'players/index'
  get 'players/destroy'
  get 'homes/top'
  resources :genres
  resources :questions
  root "homes#top"
  devise_for :users
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
