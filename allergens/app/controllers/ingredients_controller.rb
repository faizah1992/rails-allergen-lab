class IngredientsController < ApplicationController
    def index
        @ingredients=Ingredient.all
        # @allergic_ingredients= AllergicIngredient.all
        # @user_order = @allergic_ingredients.sort_by { |i| i.user }
    end

    def show
        @ingredient=Ingredient.find(params[:id])
        @recipes = @ingredient.recipes
    end
end