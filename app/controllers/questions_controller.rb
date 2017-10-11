class QuestionsController < ApplicationController
  def index
    @questions = Question.all
    @questions = @questions.sort_by { |question| question.created_at }
    @questions.reverse!
  end

  def show
    @question = Question.find(params[:id])
    @answers = @question.answers
    @answers = @answers.sort_by { |answer| answer.created_at }
    @answers.reverse!
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    @question.update(question_params)
    if @question.save
      redirect_to @question, notice: 'Your question was successfully submitted.'
    else
      @errors = @question.errors.messages.values.flatten
      render action: 'edit'
    end
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    @errors = []

    if @question.save
      redirect_to @question, notice: 'Your question was successfully submitted.'
    else
      @errors = @question.errors.messages.values.flatten
      render action: 'new'
    end
  end

  def question_params
    params.require(:question).permit(:title, :description)
  end

end
