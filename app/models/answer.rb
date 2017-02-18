class Answer < ApplicationRecord
  belongs_to :question

  validates :answer, :question, :question_id, presence: true
  validates :correct, inclusion: { in: [true, false] }
  validates :correct, exclusion: { in: [nil] }
end
