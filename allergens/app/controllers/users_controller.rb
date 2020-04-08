class UsersController < ApplicationController
    def index
        @users=User.all
    end
    def show
        @user=User.find(params[:id])
        @recipe= @user.recipes
    end
  
    def destroy
        @user=User.find(params[:id])
        @user.destroy
        redirect_to("/users")
    end

end