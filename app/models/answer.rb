class Answer < ApplicationRecord
  belongs_to :question

  validates :description, presence: {
    message: "You must include a description."
  }

  validates :description, length: {
    minimum: 50,
    message: "Your answer should have a minimum of 50 characters."
  }
end
