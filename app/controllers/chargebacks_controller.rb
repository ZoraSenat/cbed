class ChargebacksController < ApplicationController
  def index
    @chargebacks = Chargeback.all

    render("chargebacks/index.html.erb")
  end

  def show
    @chargeback = Chargeback.find(params[:id])

    render("chargebacks/show.html.erb")
  end

  def new
    @chargeback = Chargeback.new

    render("chargebacks/new.html.erb")
  end

  def create
    @chargeback = Chargeback.new

    @chargeback.date_received = params[:date_received]
    @chargeback.date_transacted = params[:date_transacted]
    @chargeback.contact_name = params[:contact_name]
    @chargeback.account_name = params[:account_name]
    @chargeback.salesperson_id = params[:salesperson_id]
    @chargeback.credit_card_id = params[:credit_card_id]
    @chargeback.amount = params[:amount]
    @chargeback.io = params[:io]
    @chargeback.case_number = params[:case_number]
    @chargeback.reason_id = params[:reason_id]
    @chargeback.date_due = params[:date_due]
    @chargeback.date_responded = params[:date_responded]
    @chargeback.status_id = params[:status_id]
    @chargeback.notes = params[:notes]
    @chargeback.user_id = params[:user_id]

    save_status = @chargeback.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/chargebacks/new", "/create_chargeback"
        redirect_to("/chargebacks")
      else
        redirect_back(:fallback_location => "/", :notice => "Chargeback created successfully.")
      end
    else
      render("chargebacks/new.html.erb")
    end
  end

  def edit
    @chargeback = Chargeback.find(params[:id])

    render("chargebacks/edit.html.erb")
  end

  def update
    @chargeback = Chargeback.find(params[:id])

    @chargeback.date_received = params[:date_received]
    @chargeback.date_transacted = params[:date_transacted]
    @chargeback.contact_name = params[:contact_name]
    @chargeback.account_name = params[:account_name]
    @chargeback.salesperson_id = params[:salesperson_id]
    @chargeback.credit_card_id = params[:credit_card_id]
    @chargeback.amount = params[:amount]
    @chargeback.io = params[:io]
    @chargeback.case_number = params[:case_number]
    @chargeback.reason_id = params[:reason_id]
    @chargeback.date_due = params[:date_due]
    @chargeback.date_responded = params[:date_responded]
    @chargeback.status_id = params[:status_id]
    @chargeback.notes = params[:notes]
    @chargeback.user_id = params[:user_id]

    save_status = @chargeback.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/chargebacks/#{@chargeback.id}/edit", "/update_chargeback"
        redirect_to("/chargebacks/#{@chargeback.id}", :notice => "Chargeback updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Chargeback updated successfully.")
      end
    else
      render("chargebacks/edit.html.erb")
    end
  end

  def destroy
    @chargeback = Chargeback.find(params[:id])

    @chargeback.destroy

    if URI(request.referer).path == "/chargebacks/#{@chargeback.id}"
      redirect_to("/", :notice => "Chargeback deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Chargeback deleted.")
    end
  end
end
