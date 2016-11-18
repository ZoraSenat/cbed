class CreditCardsController < ApplicationController
  def index
    @credit_cards = CreditCard.all

    render("credit_cards/index.html.erb")
  end

  def show
    @credit_card = CreditCard.find(params[:id])

    render("credit_cards/show.html.erb")
  end

  def new
    @credit_card = CreditCard.new

    render("credit_cards/new.html.erb")
  end

  def create
    @credit_card = CreditCard.new

    @credit_card.type = params[:type]
    @credit_card.description = params[:description]

    save_status = @credit_card.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/credit_cards/new", "/create_credit_card"
        redirect_to("/credit_cards")
      else
        redirect_back(:fallback_location => "/", :notice => "Credit card created successfully.")
      end
    else
      render("credit_cards/new.html.erb")
    end
  end

  def edit
    @credit_card = CreditCard.find(params[:id])

    render("credit_cards/edit.html.erb")
  end

  def update
    @credit_card = CreditCard.find(params[:id])

    @credit_card.type = params[:type]
    @credit_card.description = params[:description]

    save_status = @credit_card.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/credit_cards/#{@credit_card.id}/edit", "/update_credit_card"
        redirect_to("/credit_cards/#{@credit_card.id}", :notice => "Credit card updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Credit card updated successfully.")
      end
    else
      render("credit_cards/edit.html.erb")
    end
  end

  def destroy
    @credit_card = CreditCard.find(params[:id])

    @credit_card.destroy

    if URI(request.referer).path == "/credit_cards/#{@credit_card.id}"
      redirect_to("/", :notice => "Credit card deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Credit card deleted.")
    end
  end
end
