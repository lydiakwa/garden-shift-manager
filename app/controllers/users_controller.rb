class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end
end


# class Users::SessionsController < Devise::SessionsController
#   def create
#     # custom sign-in code
#   end

#   def index
#     @users = User.all
#   end

#   def show
#     @user = User.find(params[:id])
#   end
# end
