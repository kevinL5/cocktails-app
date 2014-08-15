class IngredientsController < ApplicationController

  def create
    @ingredient = Ingredient.create(ingredient_params)
    redirect_to cocktails_path
  end

  private
  def ingredient_params
    params.require(:ingredient).permit(:name)
  end

end
