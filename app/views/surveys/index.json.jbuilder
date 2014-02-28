json.array!(@surveys) do |survey|
  json.extract! survey, :id, :user_id, :name, :description, :img_location
  json.url survey_url(survey, format: :json)
end
