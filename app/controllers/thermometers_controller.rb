class ThermometersController < ApplicationController
  before_action :set_thermometer, only: [:show, :edit, :update, :destroy]
  # before_filter :authenticate_user!
  require 'rake'
  load_and_authorize_resource
  include ActionController::Live
  respond_to :html, :xml, :json

  # def stream
  #   10.times do |i|
  #     response.stream.write "This is kine #{i}\n"
  #   end
  # ensure
  #   response.stream.close
  # end

  def hot_hot_hotkill
    if @thermometer.maxtemp > @thermometer.current_temp
      # @thermometer_server = Thermometer.find(params[:id])
      ThermometerMailer.hot_hot_hot(self)
    else
      puts "your G"
    end
  end

  def index
    # render :text => params.inspect
    @thermometers = Thermometer.all
    # @thermometers = current_user.thermometers.order('created_at desc')
    respond_with(@thermometers)
  end

  def show
    # hot_hot_hot
  end

  def new
    @thermometer = Thermometer.new
    respond_with(@thermometer)
  end

  def edit
  end

  def create
    @thermometer = Thermometer.new(thermometer_params)
      @thermometer.save
    respond_with(@thermometer)
  end

  def update
    @thermometer.update(thermometer_params)
    respond_with(@thermometer)
  end

  def destroy
    @thermometer.destroy
    respond_with(@thermometer)
  end

  private
    def set_thermometer
      @thermometer = Thermometer.find(params[:id])
    end

    def thermometer_params
      params.require(:thermometer).permit(:location, :maxtemp, :power, :current_temp)
    end
end
