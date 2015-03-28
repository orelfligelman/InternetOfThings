class GroceriesController < ApplicationController
  before_action :set_grocery, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @groceries = Grocery.all
    respond_with(@groceries)
  end

  def show
    respond_with(@grocery)
  end

  def new
    @grocery = Grocery.new
    respond_with(@grocery)
  end

  def edit
  end

  def create
    @grocery = Grocery.new(grocery_params)
    @grocery.save
    respond_with(@grocery)
  end

  def update
    @grocery.update(grocery_params)
    respond_with(@grocery)
  end

  def destroy
    @grocery.destroy
    respond_with(@grocery)
  end

  private
    def set_grocery
      @grocery = Grocery.find(params[:id])
    end

    def grocery_params
      params.require(:grocery).permit(:meat, :vegetable, :fruit, :dairy)
    end
end
