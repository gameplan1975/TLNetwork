Rails.application.routes.draw do
  get 'homes/top'
  resources :genres
  resources :questions
  root "homes#top"
  devise_for :users
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
