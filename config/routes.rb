Rails.application.routes.draw do
  resources :announcements

  root :to => "visitors#index"
end
