json.extract! quizz, :id, :title, :description, :created_at, :updated_at
json.url quizz_url(quizz, format: :json)