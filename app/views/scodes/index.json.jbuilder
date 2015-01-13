json.array!(@scodes) do |scode|
  json.extract! scode, :id, :scode, :sname
  json.url scode_url(scode, format: :json)
end
