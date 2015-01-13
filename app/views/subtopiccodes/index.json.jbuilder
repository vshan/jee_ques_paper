json.array!(@subtopiccodes) do |subtopiccode|
  json.extract! subtopiccode, :id, :stcode, :stname, :tcode, :active
  json.url subtopiccode_url(subtopiccode, format: :json)
end
