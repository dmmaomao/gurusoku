class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @name = current_user.name
    @reviews = user.reviews
  end
end
