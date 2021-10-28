class HomeController < ApplicationController
  def index
    @gifs = Gif.page(params[:page]).per(2)
  end
end
