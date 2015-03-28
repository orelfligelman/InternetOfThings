json.array!(@appliances) do |appliance|
  json.extract! appliance, :id, :oven, :power, :microwave, :power
  json.url appliance_url(appliance, format: :json)
end
