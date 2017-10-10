class QuestionsController < ApplicationController
  def index
    @questions = Question.all
    @questions = @questions.sort_by { |question| question.created_at }
    @questions.reverse!
  end
end
