json.array!(@groceries) do |grocery|
  json.extract! grocery, :id, :meat, :vegetable, :fruit, :dairy
  json.url grocery_url(grocery, format: :json)
end
