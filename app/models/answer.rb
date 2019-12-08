class Answer < ApplicationRecord

  belongs_to :question

  validates :body, presence: true
  validate :validate_number_of_answers

  scope :correct_answer, -> { where(correct: true) }

  def validate_number_of_answers
    if question.answers.size >= 4
      errors.add(:question, "There cannot be more than 4 answers to one question")
    end
  end

end
