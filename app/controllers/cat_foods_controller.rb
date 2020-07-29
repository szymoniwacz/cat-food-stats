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

  def update
    @cat_food = CatFood.find(params[:id])
    if @cat_food.update(cat_food_params)
      render json: { status: :ok, message: 'Success' }
    else
      render json: { json: @cat_food.errors, status: :unprocessable_entity }
    end
  end

  def destroy
    @cat_food = CatFood.find(params[:id])
    if @cat_food.destroy
      render json: { json: 'Cat food was successfully deleted.'}
    else
      render json: { json: @cat_food.errors, status: :unprocessable_entity }
    end
  end

  private

  def cat_food_params
    params.require(:cat_food).permit(:name, :ingredients)
  end
end
