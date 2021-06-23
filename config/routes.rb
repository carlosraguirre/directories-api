Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 
  #index
  get "/directories", controller: "directories", action: "index"

  #show
  get "/directories/:id", controller: "directories", action: "show"

  #create
  post "/directories", controller: "directories", action: "create"

  #update
  post "/directories/:id", controller: "directories", action: "update"

  #delete
  delete "/directories/:id", controller: "directories", action: "destroy"

end
