json.array!(@musics) do |music|
  json.extract! music, :id, :song, :artist
  json.url music_url(music, format: :json)
end
