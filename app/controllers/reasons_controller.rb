class ReasonsController < ApplicationController
  def index
    @q = Reason.ransack(params[:q])
    @reasons = @q.result(:distinct => true).includes(:chargebacks).page(params[:page]).per(10)

    render("reasons/index.html.erb")
  end

  def show
    @chargeback = Chargeback.new
    @reason = Reason.find(params[:id])

    render("reasons/show.html.erb")
  end

  def new
    @reason = Reason.new

    render("reasons/new.html.erb")
  end

  def create
    @reason = Reason.new

    @reason.reason = params[:reason]

    save_status = @reason.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/reasons/new", "/create_reason"
        redirect_to("/reasons")
      else
        redirect_back(:fallback_location => "/", :notice => "Reason created successfully.")
      end
    else
      render("reasons/new.html.erb")
    end
  end

  def edit
    @reason = Reason.find(params[:id])

    render("reasons/edit.html.erb")
  end

  def update
    @reason = Reason.find(params[:id])

    @reason.reason = params[:reason]

    save_status = @reason.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/reasons/#{@reason.id}/edit", "/update_reason"
        redirect_to("/reasons/#{@reason.id}", :notice => "Reason updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Reason updated successfully.")
      end
    else
      render("reasons/edit.html.erb")
    end
  end

  def destroy
    @reason = Reason.find(params[:id])

    @reason.destroy

    if URI(request.referer).path == "/reasons/#{@reason.id}"
      redirect_to("/", :notice => "Reason deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Reason deleted.")
    end
  end
end
