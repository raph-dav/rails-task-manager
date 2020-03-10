Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # READ ALL THE TASK
  get '/tasks', to: 'tasks#index', as: :tasks

  # CREATE A TASK >> 2 REQUESTS
  # 1 DISPLAY THE FORM --> New
  get '/tasks/new', to: 'tasks#new'

  # 2 SAVE IN DB
  post '/tasks', to: 'tasks#create'

  # READ ONE TASK
  get '/tasks/:id', to: 'tasks#show', as: :task


  # UPDATE A TASK >> 2 REQUESTS
  # 1 DISPLAY THE FORM ALREADY FILLED IN - GET
  get '/tasks/:id/edit', to: 'tasks#edit', as: :task_edit
  # 2 POST PARAMS & UPDATE TO THE DB
  patch '/tasks/:id', to: 'tasks#update'

  # #DELETE A TASK
  delete '/tasks/:id', to: 'tasks#destroy'
  # delete '/restaurants/:id', to: "restaurants#destroy"

end
