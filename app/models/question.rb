class Question < ApplicationRecord
  has_many :answers

  validates :title, presence: { message: "You must include a title." }

  validates :title, length: {
    maximum: 20,
    message: "Your title should have fewer than 20 characters."
  }

  validates :description, presence: {
    message: "You must include a description."
  }

  validates :description, length: {
    minimum: 50,
    message: "Your description should have a minimum of 50 characters."
  }
end
