class TopController < ApplicationController
  def index
  end

  def new
  end

  def create
  end

  def destroy
  end

  def edit
  end

  def update
  end

  def show
  end

  private
  def reviews_params
  end

  def move_to_index
    redirection_to action: :
    index unless
    user_signed_in?
    end
  end

end
