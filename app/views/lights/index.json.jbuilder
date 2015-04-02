json.array!(@lights) do |light|
  json.extract! light, :id, :intensity, :power
  json.url light_url(light, format: :json)
end
