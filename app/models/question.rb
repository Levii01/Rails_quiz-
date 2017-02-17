class Question < ApplicationRecord
  belongs_to :quizz
  has_many :answer
end
