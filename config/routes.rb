Rails.application.routes.draw do
  devise_for :users
  root to: "prefectures#index"
  resources :prefectures, only:[:index, :show]
  resources :memories, only:[:new, :create, :show, :destroy]
  resources :users, only:[:show, :edit, :update]
end
