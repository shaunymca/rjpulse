json.array!(@answers) do |answer|
  json.extract! answer, :id, :user_id, :question_id, :value_s, :value_t
  json.url answer_url(answer, format: :json)
end
