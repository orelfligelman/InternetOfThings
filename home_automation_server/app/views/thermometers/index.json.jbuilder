json.array!(@thermometers) do |thermometer|
  json.extract! thermometer, :id, :location, :maxtemp, :power
  json.url thermometer_url(thermometer, format: :json)
end
