Rails.application.routes.draw do
  devise_for :admins
  resources :events

  resources :announcements

  root :to => "announcements#index"
end
