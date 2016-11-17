class DosesController < ApplicationController
  before_action :find_cocktail, only: [ :new, :create ]
  
  def index
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = @Cocktail.new(review_params)
    @cocktail.save
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end



end
