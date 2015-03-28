class AppliancesController < ApplicationController
  before_action :set_appliance, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @appliances = Appliance.all
    respond_with(@appliances)
  end

  def show
    respond_with(@appliance)
  end

  def new
    @appliance = Appliance.new
    respond_with(@appliance)
  end

  def edit
  end

  def create
    @appliance = Appliance.new(appliance_params)
    @appliance.save
    respond_with(@appliance)
  end

  def update
    @appliance.update(appliance_params)
    respond_with(@appliance)
  end

  def destroy
    @appliance.destroy
    respond_with(@appliance)
  end

  private
    def set_appliance
      @appliance = Appliance.find(params[:id])
    end

    def appliance_params
      params.require(:appliance).permit(:oven, :power, :microwave, :power)
    end
end
