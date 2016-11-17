class CocktailsController < ApplicationController
before_action :find_cocktail, only: [ :new, :create ]


 def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = @Cocktail.new(review_params)
    @cocktail.save
  end

  def edit
    

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end

  def cocktail_
    @restaurant = Restaurant.find(params[:restaurant_id])
  end


end
