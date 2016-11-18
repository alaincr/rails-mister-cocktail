class CocktailsController < ApplicationController
before_action :find_cocktail, only: [ :create ]


  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = @Cocktail.create(cocktail_params)
    @cocktail.save
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end

  def find_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end
end
