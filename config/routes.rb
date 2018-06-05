Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'tasks/new', to: 'tasks#new'
  get 'tasks/:id', to: 'tasks#show', as: 'task'
  post 'tasks', to: 'tasks#create'
  get 'tasks/edit/:id', to: 'tasks#edit', as: 'edit_task'
  patch 'tasks/:id', to: 'tasks#update', as: 'update_task'
  delete 'tasks/:id', to: 'tasks#destroy', as: 'destroy'
  root to: 'tasks#index'
end
