class SalespeopleController < ApplicationController
  def index
    @salespeople = Salesperson.all

    render("salespeople/index.html.erb")
  end

  def show
    @chargeback = Chargeback.new
    @salesperson = Salesperson.find(params[:id])

    render("salespeople/show.html.erb")
  end

  def new
    @salesperson = Salesperson.new

    render("salespeople/new.html.erb")
  end

  def create
    @salesperson = Salesperson.new

    @salesperson.first_name = params[:first_name]
    @salesperson.last_name = params[:last_name]
    @salesperson.sugar_user_id = params[:sugar_user_id]

    save_status = @salesperson.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/salespeople/new", "/create_salesperson"
        redirect_to("/salespeople")
      else
        redirect_back(:fallback_location => "/", :notice => "Salesperson created successfully.")
      end
    else
      render("salespeople/new.html.erb")
    end
  end

  def edit
    @salesperson = Salesperson.find(params[:id])

    render("salespeople/edit.html.erb")
  end

  def update
    @salesperson = Salesperson.find(params[:id])

    @salesperson.first_name = params[:first_name]
    @salesperson.last_name = params[:last_name]
    @salesperson.sugar_user_id = params[:sugar_user_id]

    save_status = @salesperson.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/salespeople/#{@salesperson.id}/edit", "/update_salesperson"
        redirect_to("/salespeople/#{@salesperson.id}", :notice => "Salesperson updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Salesperson updated successfully.")
      end
    else
      render("salespeople/edit.html.erb")
    end
  end

  def destroy
    @salesperson = Salesperson.find(params[:id])

    @salesperson.destroy

    if URI(request.referer).path == "/salespeople/#{@salesperson.id}"
      redirect_to("/", :notice => "Salesperson deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Salesperson deleted.")
    end
  end
end
