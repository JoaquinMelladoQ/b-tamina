class DealsController < ApplicationController
  def new
    @deal = Deal.new
    @brewery=Brewery.find(params[:brewery_id])
  end

  def create
    bagasse = Bagasse.where(brewery_id: params[:brewery_id]).pluck[:quantity]
    @total = bagasse.inject(0) { |sum, b| sum + b }
    if params[:quantity] < @total 
      @deal = Deal.create(deal_params)
      @deal.save!
      redirect_to 'root_path'
    else 
      redirect_to 'new_deal_path'
    end
  end 

  protected

  def deal_params
    params.require(:deal).permit(:deal_quantity, :deal_date, :brewery_id)
  end 
end
