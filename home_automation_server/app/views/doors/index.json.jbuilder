json.array!(@doors) do |door|
  json.extract! door, :id, :lock
  json.url door_url(door, format: :json)
end
