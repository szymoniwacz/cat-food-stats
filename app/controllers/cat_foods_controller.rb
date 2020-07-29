class CatFoodsController < ApplicationController
  def index
    respond_to do |format|
      format.html
      format.json { render json: CatFood.all }
    end
  end

  def create
    @cat_food = CatFood.new(cat_food_params)
    if @cat_food.save
      render json: { status: :ok, message: 'Success' }
    else
      render json: { json: @cat_food.errors, status: :unprocessable_entity }
    end
  end

  private

  def cat_food_params
    params.require(:cat_food).permit(:name, :ingredients)
  end
end
