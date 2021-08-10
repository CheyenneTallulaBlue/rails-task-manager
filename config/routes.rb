Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # List all tasks
  get "tasks", to: "tasks#index"
  
  # Get the create task form
  get "tasks/new", to: "tasks#new"

  # show individual task details
  get "tasks/:id", to: "tasks#show", as: :task

  # send the new task to be saved
  post "tasks", to: "tasks#create"

  # Make new from with details already in to update
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task

  # Save the updated tasks
  patch "tasks/:id", to: "tasks#update"

  # Destroy tasks
  delete "tasks/:id", to: "tasks#destroy", as: :delete_task

end
