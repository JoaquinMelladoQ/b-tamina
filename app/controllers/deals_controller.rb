class DealsController < ApplicationController
  def new
    @deal = Deal.new
  end
end
