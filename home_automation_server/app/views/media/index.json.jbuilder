json.array!(@media) do |medium|
  json.extract! medium, :id, :television
  json.url medium_url(medium, format: :json)
end
