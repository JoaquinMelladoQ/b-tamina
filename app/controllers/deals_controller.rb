class DealsController < ApplicationController
  before_action :authenticate_brewery!, only: [:index]
  def new
    @deal = Deal.new
    @brewery=Brewery.find(params[:brewery_id])
  end

  def index
    brewery_ref = Brewery.find(current_brewery.id)
    @deals = Deal.where(brewery_id: brewery_ref)
  end

  def create
    x=params[:brewery_id]
    bagasse = Bagasse.where(brewery_id: x)
    quantities=bagasse.pluck(:quantity)
    
    @total = quantities.inject(0) { |sum, b| sum + b }
    
    if deal_params[:deal_quantity].to_i < @total 
      @deal = Deal.create(deal_params)
      @deal.client_id=current_client.id
      @deal.brewery_id=x
      
      @deal.save!
      redirect_to brewerie_index_path
    else 
      redirect_to 'new_deal_path'
    end
  end 

  protected

  def deal_params
    params.require(:deal).permit(:deal_quantity, :deal_date, :brewery_id)
  end 
end
