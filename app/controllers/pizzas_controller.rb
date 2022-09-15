class PizzasController < ApplicationController
  def show
  end

  def new
    @pizza = Pizza.new
  end

  def create
    raise
    @pizza = Pizza.new(pizza_params)
    @pizza.save
    redirect_to confirmation_path(@pizza)
  end

  private

  def pizza_params
    params.require(:pizza).permit(:topping, :dough, :style)
  end
end
