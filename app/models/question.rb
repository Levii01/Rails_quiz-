class Question < ApplicationRecord
  belongs_to :quizz
  has_many :answer

  validates :title, :quizz_id, :quizz, presence: true
end
