class QuestionsController < ApplicationController
  def index
    @questions = Question.all
    @questions = @questions.sort_by { |question| question.created_at }
    @questions.reverse!
  end

  def show
    @question = Question.find(params[:id])
  end
end
