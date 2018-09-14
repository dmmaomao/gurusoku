class ReserveController < ApplicationController
  require 'net/http'
  require 'uri'
  require 'pry'
  require 'json'
  def index
  end

  def search

  end


  def search_map
    latitude = params[:latitude]
    longitude = params[:longitude]
    @places = Izakaya.all.within(0.3, origin: [latitude, longitude])
  end


  def number
    @number = Number.new
  end


  def map
    @number = params[:number]
    latitude = params[:latitude]
    longitude = params[:longitude]
    @location = [latitude, longitude]
    @restaurants = get_izakaya(location)
    ## @restaurants[:rest] 多分[{id:~,text:~},{id: ~,text: ~ }]
    ##rst_idsはAPiでとってきた店のid全部
    ##rst_ids = [3700,3701,3702]
    rst_ids = @restaurants.rest.id

    #検索条件のカラムが動的に変わる
    rsts = Seat.Where(izakaya_id: rst_ids).where("#{number} >= 1") ###{number}が動くかわからないので注意
    ids = []
    rsts.each do |rest|
      ids << rest.id
    end

  end

  private
  def get_izakaya(location)
    url = URI.parse(URI.escape("https://api.gnavi.co.jp/RestSearchAPI/v3/?keyid=acfab00be0c5713c509b44baa0f1a81b&latitude=#{location[:latitude]}&longitude=#{location[:longitude]}&range=1&web_reserve=1&bottomless_cup=1"))
    res = Net::HTTP.start(url.host, url.port, use_ssl: true){|http|
      http.get(url.path + "?" + url.query);
    }
    obj = JSON.parse(res.body)
    return obj
  end

end
