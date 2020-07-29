class CatFoodsController < ApplicationController
  def index
    respond_to do |format|
      format.html
      format.json { render json: CatFood.all }
    end
  end
end
