class ClientsController < ApplicationController
  def index
    @clients=Client.all
  end

  def show 
    @client = Client.find(params[:id])
    @deals = Deal.where(client_id: @client.id, brewery_id: current_brewery.id)
  end
end
