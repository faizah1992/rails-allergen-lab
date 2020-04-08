User.destroy_all
Ingredient.destroy_all
Recipe.destroy_all
AllergicIngredient.destroy_all
RecipeIngredient.destroy_all
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
5.times do 
    User.create(name: Faker::Name.name, occupation:Faker::Job.title)
end

5.times do
    Recipe.create(name:Faker::Food.dish, user_id: User.all.sample.id)
end

5.times do
    Ingredient.create(name:Faker::Food.ingredient,recipe_id: Recipe.all.sample.id)
end

5.times do
    RecipeIngredient.create(recipe_id:Recipe.all.sample.id, ingredient_id: Ingredient.all.sample.id)
end


5.times do
    AllergicIngredient.create(user_id: User.all.sample.id, ingredient_id: Ingredient.all.sample.id)
end