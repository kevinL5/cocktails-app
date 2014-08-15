class DosesController < ApplicationController

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = @cocktail.doses.create(cocktail_params)
    redirect_to cocktail_path(@cocktail)
  end

  def destroy
    @cocktail = Cocktail.find(params[:cocktail_id])
    d = @cocktail.doses.find(params[:id])
    d.destroy
    redirect_to cocktail_path(@cocktail)
  end

 private
  def cocktail_params
    params.require(:dose).permit(:ingredient_id, :amount)
  end

end
