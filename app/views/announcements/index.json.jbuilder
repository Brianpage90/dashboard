json.array!(@announcements) do |announcement|
  json.extract! announcement, :id, :published_on, :expired, :critical_flag, :body, :title, :publisher
  json.url announcement_url(announcement, format: :json)
end
