Rails.application.routes.draw do
  # Routes for the Salesperson resource:
  # CREATE
  get "/salespeople/new", :controller => "salespeople", :action => "new"
  post "/create_salesperson", :controller => "salespeople", :action => "create"

  # READ
  get "/salespeople", :controller => "salespeople", :action => "index"
  get "/salespeople/:id", :controller => "salespeople", :action => "show"

  # UPDATE
  get "/salespeople/:id/edit", :controller => "salespeople", :action => "edit"
  post "/update_salesperson/:id", :controller => "salespeople", :action => "update"

  # DELETE
  get "/delete_salesperson/:id", :controller => "salespeople", :action => "destroy"
  #------------------------------

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
