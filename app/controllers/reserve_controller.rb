class ReserveController < ApplicationController
  def index
  end

  def reserve

  end

  def search
    latitude = params[:latitude]
    longitude = params[:longitude]
    @places = Shop.all.within(0.3, origin: [latitude, longitude])
  end

  def map
  end
end
