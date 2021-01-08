class BagassesController < ApplicationController
  def new
    @bagasse=Bagasse.new
  end

  def show
    @bagasse = Bagasse.where(bewery_id: current_brewery.id)
  end

  def create
    @bagasse=Bagasse.new(quantity: bagasse_params[:quantity], production_date: bagasse_params[:production_date], brewery_id: current_brewery.id)
    if @bagasse.save
        redirect_to root_path, notice: 'Register was successfully created.'
    else
        flash.now[:alert] = 'Register cannot be created.'
        render :index
    end
  end

  private
    def bagasse_params
      params.require(:bagasse).permit(:quantity, :production_date)
    end

end
