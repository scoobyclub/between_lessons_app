json.array!(@daily_questions) do |daily_question|
  json.extract! daily_question, :question, :response, :user, :answered
  json.url daily_question_url(daily_question, format: :json)
end