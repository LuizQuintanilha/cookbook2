class RecipesController < ApplicationController
  def show

  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to root_path, notice: 'Receita cadastrada com sucesso.'
    else 
      render 'new', notice: 'Não foi possível cadastrar a receita'
    end

  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :ingredients, :time_to_prepare, :recipe_type)
  end
end