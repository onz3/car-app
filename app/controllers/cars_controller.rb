class CarsController < ApplicationController
  before_action :current_car, only: [:show, :edit, :update, :destroy]

  def index
    @cars = Car.all
  end

  def show

  end

  def new
    @cars = Car.new
  end

  def edit
    
  end

  def create
    car = Car.create(car_params)
    redirect_to cars_path
  end

  def update
    @cars = Car.find(params[:id])
    @cars.update(car_params)

    redirect_to car_path(@cars)
  end

  
  def destroy
    @cars = Car.find(params[:id])
    @cars.destroy

    redirect_to cars_path
  end


  private

  def car_params
    params.require(:car).permit(:name, :year)
  end

end
