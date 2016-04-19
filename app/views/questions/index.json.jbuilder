json.array!(@questions) do |question|
  json.extract! question, :id, :q, :ans
  json.url question_url(question, format: :json)
end
