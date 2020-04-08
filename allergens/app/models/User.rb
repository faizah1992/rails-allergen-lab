class User < ApplicationRecord
    has_many(:recipes)
    has_many(:allergic_ingredients)
    has_many(:ingredients,through: :allergic_ingredients)
end