Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #read all
  get 'tasks', to: 'tasks#index', as: :tasks
  #Add Task
  get 'tasks/new', to: 'tasks#new', as: :new_task
  post 'tasks', to: 'tasks#create'
  #Real one
  get 'tasks/:id', to: 'tasks#show'
  #update
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update', as: :task
  #Destroy
  delete 'tasks/:id', to: 'tasks#destroy'

end
