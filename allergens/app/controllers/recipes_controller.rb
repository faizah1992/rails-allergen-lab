class RecipesController< ApplicationController
    def index
        @recipes=Recipe.all
    end

    def new
     @users=User.all
    end

    def create
    @recipe=Recipe.create(name:params[:name],user_id:params[:user_id])
    redirect_to('/recipes')
    end
end