class CocktailsController < ApplicationController
  before_action :new_cocktail, only: [:create]

  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(new_cocktail)
    @cocktail.save
    redirect_to cocktails_path
  end

  private

  def new_cocktail
    params.require(:cocktail).permit(:name, :ingredients)
  end

end
