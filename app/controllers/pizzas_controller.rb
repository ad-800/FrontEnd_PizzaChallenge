class PizzasController < ApplicationController
  def show
    @pizza = Pizza.find(params[:id])
  end

  def new
    @pizza = Pizza.new
  end

  def create
    @pizza = Pizza.new(pizza_params)
    @pizza.topping.reject! { |c| c.empty? }
    @pizza.save
    redirect_to pizza_path(@pizza)
  end

  private

  def pizza_params
    params[:pizza][:topping] ||= []
    params.require(:pizza).permit(:dough, :style, topping: [])
  end
end
