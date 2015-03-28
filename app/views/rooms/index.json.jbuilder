json.array!(@rooms) do |room|
  json.extract! room, :id, :bedroom, :bath, :living, :dining, :garage, :basement
  json.url room_url(room, format: :json)
end
