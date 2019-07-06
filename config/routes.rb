Rails.application.routes.draw do
resources :projects, :todos
root 'project#index'
end
