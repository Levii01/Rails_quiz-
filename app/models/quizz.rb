class Quizz < ApplicationRecord
  has_many :question

  validates :title, :description, presence: true
end
