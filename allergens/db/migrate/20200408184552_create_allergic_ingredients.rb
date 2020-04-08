class CreateAllergicIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :allergic_ingredients do |t|
      t.integer :user_id
      t.integer :ingredient_id
    end
  end
end

# User -< Recipe

# User -< AllergicIngredient >- Ingredient

# Recipe -< Ingredient