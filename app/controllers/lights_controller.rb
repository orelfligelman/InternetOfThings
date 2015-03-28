class LightsController < ApplicationController
  before_action :set_light, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @lights = Light.all
    respond_with(@lights)
  end

  def show
    respond_with(@light)
  end

  def new
    @light = Light.new
    respond_with(@light)
  end

  def edit
  end

  def create
    @light = Light.new(light_params)
    @light.save
    respond_with(@light)
  end

  def update
    @light.update(light_params)
    respond_with(@light)
  end

  def destroy
    @light.destroy
    respond_with(@light)
  end

  private
    def set_light
      @light = Light.find(params[:id])
    end

    def light_params
      params.require(:light).permit(:intensity, :power)
    end
end
