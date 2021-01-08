class YeastsController < ApplicationController
    def new
      @yeast=Yeast.new
    end
  
    def show
      @yeasts = Yeast.where(bewery_id: current_brewery.id)
    end
  
    def create
      @yeast=Yeast.new(quantity: yeast_params[:quantity], production_date: yeast_params[:production_date], brewery_id: current_brewery.id, strain: yeast_params[:strain])
      if @bagasse.save
          redirect_to root_path, notice: 'Register was successfully created.'
      else
          flash.now[:alert] = 'Register cannot be created.'
          render :index
      end
    end
  
    private
      def yeast_params
        params.require(:yeast).permit(:quantity, :production_date, :strain)
      end
  
  end