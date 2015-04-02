json.array!(@thermometers) do |thermometer|
  json.extract! thermometer, :id, :temperature
  json.url thermometer_url(thermometer, format: :json)
end
