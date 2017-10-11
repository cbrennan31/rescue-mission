class AnswersController < ApplicationController
  def new
    @question = Question.find(params[:question_id])
    @answers = @question.answers
    @answer = Answer.new
  end

  def create
    @question = Question.find(params[:question_id])
    @answers = @question.answers
    @answer = Answer.new(answer_params)
    @answer.question = @question
    @errors = []

    if @answer.save
      flash[:notice] = 'Your answer was successfully submitted.'
      redirect_to question_path(@question)
    else
      @errors = @answer.errors.messages.values.flatten
      render :new
    end

  end

  private

  def answer_params
    params.require(:answer).permit(:description)
  end
end
