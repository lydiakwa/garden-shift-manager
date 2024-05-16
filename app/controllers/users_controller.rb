class UsersController < ApplicationController
  # before_action :redirect_unless_signed_in

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
