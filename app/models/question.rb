class Question < ApplicationRecord
  belongs_to :quizz
  has_meny :answer
end
