## Rails Recipes Mini Project

In this project, we will be practicing object relationships in Rails. We will be building out a domain model in which a User can author a recipe. A single Recipe `belongs_to` a user. A Recipe also has many Ingredients, while a single Ingredient can be found in many Recipes. There are Ingredients that some Users may be allergic to.

## Setup
- Create the Rails app using `rails new allergens --skip-git --skip-javascript`
- Draw the models and associations you will need based on the above description
- Create your table schema
- Create your models
- Create seed data (bonus points for using [Faker](https://github.com/faker-ruby/faker/blob/master/doc/default/food.md))

## Deliverables

### `Recipe`

- `index`––show all recipe instances
- `new`––ability to create a new recipe and associate it with a particular user. You may want to look into [collection select](http://api.rubyonrails.org/v5.2.0/classes/ActionView/Helpers/FormBuilder.html#method-i-collection_select)

### `User`

- `show` page for a user. This should include all of the recipes that a user has authored.
- The ability to delete a user

### `Ingredient`

- `index` should show all ingredients
- `show` a particular ingredient. I should be able to see all of the recipes that an ingredient appears in.

### `**Bonus**`
- In the Ingredient `index`, sort the ingredients by the number of users allergic to it. For example, if several users are allergic to peanut butter, it should appear higher on the list. You might want to look into [ActiveRecord Query Methods]
- In the Recipe `index`, add the ability to sort recipes by number of ingredients. You can use a [search for this feature](http://guides.rubyonrails.org/form_helpers.html#a-generic-search-form)
(https://guides.rubyonrails.org/active_record_querying.html)
- Add [bootstrap for styling](https://getbootstrap.com/docs/4.1/getting-started/introduction/)
