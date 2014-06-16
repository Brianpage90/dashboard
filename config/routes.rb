Rails.application.routes.draw do
  resources :events

  resources :announcements

  root :to => "announcements#index"
end
