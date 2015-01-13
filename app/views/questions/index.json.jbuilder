json.array!(@questions) do |question|
  json.extract! question, :id, :question, :opa, :opb, :opc, :opd, :ro, :year, :examcode, :subjectcode, :topiccode, :stopiccode
  json.url question_url(question, format: :json)
end
