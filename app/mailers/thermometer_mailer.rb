class ThermometerMailer < ActionMailer::Base
  # def thermo_confirmation(thermometer)
  #   @thermometer = thermometer
  #   mail(
  #       :to => "#{@thermometer.email}",
  #       :subject => "Welcome to My Awesome Site"
  #   )
  # end
    def confirmation(thermometer)
      @thermometer = thermometer
      mail(:to => "#{@thermometer.email}", :subject => "Boom goes the dynamite")
    end
    def broken_thermometer(thermometer)
      @thermometer = thermometer
      mail(:to => "#{@thermometer.email}", :subject => "A Thermometer is Off-Line")
    end
    def hot_hot_hot(thermometer)
      @thermometer = thermometer
      mail(:to => "#{@thermometer.email}", :subject => "Hot Lava Alert")
    end
    def bye_bye_birdie(thermometer)
      @thermometer = thermometer
      mail(:to => "#{@thermometer.email}", :subject => "#{@thermometer.name}" + "has not been terminated")
    end
end
