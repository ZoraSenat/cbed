Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => "chargebacks#index"
  # Routes for the Credit_card resource:
  # CREATE
  get "/credit_cards/new", :controller => "credit_cards", :action => "new"
  post "/create_credit_card", :controller => "credit_cards", :action => "create"

  # READ
  get "/credit_cards", :controller => "credit_cards", :action => "index"
  get "/credit_cards/:id", :controller => "credit_cards", :action => "show"

  # UPDATE
  get "/credit_cards/:id/edit", :controller => "credit_cards", :action => "edit"
  post "/update_credit_card/:id", :controller => "credit_cards", :action => "update"

  # DELETE
  get "/delete_credit_card/:id", :controller => "credit_cards", :action => "destroy"
  #------------------------------

  # Routes for the Reason resource:
  # CREATE
  get "/reasons/new", :controller => "reasons", :action => "new"
  post "/create_reason", :controller => "reasons", :action => "create"

  # READ
  get "/reasons", :controller => "reasons", :action => "index"
  get "/reasons/:id", :controller => "reasons", :action => "show"

  # UPDATE
  get "/reasons/:id/edit", :controller => "reasons", :action => "edit"
  post "/update_reason/:id", :controller => "reasons", :action => "update"

  # DELETE
  get "/delete_reason/:id", :controller => "reasons", :action => "destroy"
  #------------------------------

  # Routes for the Status resource:
  # CREATE
  get "/statuses/new", :controller => "statuses", :action => "new"
  post "/create_status", :controller => "statuses", :action => "create"

  # READ
  get "/statuses", :controller => "statuses", :action => "index"
  get "/statuses/:id", :controller => "statuses", :action => "show"

  # UPDATE
  get "/statuses/:id/edit", :controller => "statuses", :action => "edit"
  post "/update_status/:id", :controller => "statuses", :action => "update"

  # DELETE
  get "/delete_status/:id", :controller => "statuses", :action => "destroy"
  #------------------------------

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
