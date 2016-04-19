json.array!(@events) do |event|
  json.extract! event, :id, :name, :description, :picture, :place, :datefrom, :dateto, :time
  json.url event_url(event, format: :json)
end
