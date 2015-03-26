namespace :thermometer do
  desc "read temperature"
  task get_reading: :environment do
    @thermometer = Thermometer.find(1)
    uri = URI.parse('http://localhost:5000/thermometers/1.json')
    # uri must load dynamically
    req = Net::HTTP::Get.new(uri)
    http = Net::HTTP.new(uri.host, uri.port)
    res = http.request(req)
    puts res.inspect
    puts res.body
    puts res.body.split(',')[1].split(":")[1]
    @thermometer.current_temp = res.body.split(',')[1].split(":")[1]
    @thermometer.save!
  end
  desc "ensure its working"
  task email_user_if_its_too_hot: :environment do
    puts "Scuuuuuse meeeee"
    @thermometer = Thermometer.find(1)
    if @thermometer.maxtemp > @thermometer.current_temp
      # @thermometer_server = Thermometer.find(params[:id])
      ThermometerMailer.delay.hot_hot_hot(self)
    else
      puts "your G"
    end
  end
  task make_sure_nothing_is_broken: :environment do
    @thermometer = Thermometer.find(1)
    puts "Scuuuuuse meeeee"
  end
