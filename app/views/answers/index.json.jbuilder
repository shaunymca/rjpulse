json.array!(@answers) do |answer|
  json.extract! answer, :id, :user_id, :question_id, :answer_option_id, :value_t
  json.url answer_url(answer, format: :json)
end
