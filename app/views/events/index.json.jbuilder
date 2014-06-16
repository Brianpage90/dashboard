json.array!(@events) do |event|
  json.extract! event, :id, :date, :title, :time, :body
  json.url event_url(event, format: :json)
end
