Rails.application.routes.draw do
  get 'games/prepare'
  get 'games/play'
  get 'games/result'
  get 'homes/top'
  resources :genres
  resources :questions
  resources :players
  resources :messages do
    resources :comments
  end
  root "homes#top"
  devise_for :users
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
