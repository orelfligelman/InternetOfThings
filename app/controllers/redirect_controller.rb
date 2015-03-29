class RedirectController < ApplicationController
  def index
    thermometer = THermometer.find(:first, :conditions => ["name LIKE ?", "#{params[:path].first}%"])
    redirect_to thermometer_path(thermometer)
  end
end
