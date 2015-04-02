class Thermometer < ActiveRecord::Base
  def display_temperature
    every 1.second do
      Random.rand(100)
    end
  end
end
