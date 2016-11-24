Rails.application.routes.draw do

  root 'pages#first_page'
  get 'about' => 'pages#about'
  get 'games' => 'games#index'
  get 'mon_cv' => 'pages#mon_cv'
  get 'index' => 'pages#index'
  get 'contact' => 'pages#contact' 
  get 'games/:slug' => 'games#show', as: :game
  get 'games/:slug_game/videos/:slug_video' => 'videos#show', as: :video

  devise_for :users

  namespace :admin do
    resources :games
    resources :videos

    root to: "games#index"
  end

end
