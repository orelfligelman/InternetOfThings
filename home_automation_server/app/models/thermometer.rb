class Thermometer < ActiveRecord::Base
  belongs_to :user
  resourcify
  require 'rest_client'

    def broken_thermometer
      if @thermometer.updated_at != Time.now - 45
        ThermometerMailer.delay.broken_thermometer
      end
    end
    def bye_bye_birdie
      if @thermometer.power == false
      ThermometerMailer.delay.bye_bye_birdie(self)
      end
    end
  end

