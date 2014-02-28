json.array!(@questions) do |question|
  json.extract! question, :id, :survey_id, :question_s, :question_t, :answer_type
  json.url question_url(question, format: :json)
end
