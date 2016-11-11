Rails.application.routes.draw do
  get 'videos/show'

  namespace :admin do
    resources :games
    resources :videos

    root to: "games#index"
  end

  root 'pages#index'
  get 'about' => 'pages#about'
  get 'games' => 'games#index'
  get 'mon_cv' => 'pages#mon_cv'
  get 'contact' => 'pages#contact' 
  get 'games/:slug' => 'games#show', as: :game
  get 'games/:slug_game/videos/:slug_video' => 'videos#show', as: :video
end
