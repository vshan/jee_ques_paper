json.array!(@topiccodes) do |topiccode|
  json.extract! topiccode, :id, :tcode, :tname, :scode, :active
  json.url topiccode_url(topiccode, format: :json)
end
