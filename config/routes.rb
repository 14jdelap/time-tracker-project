Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :projects
  resources :sources
  resources :tasks
  resources :time_entries
  resources :users
  resources :workspaces
end
