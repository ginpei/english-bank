json.array!(@phrases) do |phrase|
  json.extract! phrase, :id, :body, :source, :scene, :describe
  json.url phrase_url(phrase, format: :json)
end
