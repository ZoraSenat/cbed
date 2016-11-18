Rails.application.routes.draw do
  # Routes for the Chargeback resource:
  # CREATE
  get "/chargebacks/new", :controller => "chargebacks", :action => "new"
  post "/create_chargeback", :controller => "chargebacks", :action => "create"

  # READ
  get "/chargebacks", :controller => "chargebacks", :action => "index"
  get "/chargebacks/:id", :controller => "chargebacks", :action => "show"

  # UPDATE
  get "/chargebacks/:id/edit", :controller => "chargebacks", :action => "edit"
  post "/update_chargeback/:id", :controller => "chargebacks", :action => "update"

  # DELETE
  get "/delete_chargeback/:id", :controller => "chargebacks", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
