class QuestionsController < ApplicationController

  before_action :define_question, only: [:show, :destroy]
  before_action :define_test, only: [:index, :new, :create]

  rescue_from ActiveRecord::RecordNotFound,
              with: :rescue_with_question_not_found

  def index
    redirect_to @test
  end

  def show
  end

  def new
    @question = @test.questions.new
  end

  def edit
    @question = Question.find(params[:id])
  end

  def create
    @question = @test.questions.new(question_params)
    if @question.save
      redirect_to @test
    else
      puts @question.errors.full_messages
      render :new
    end
  end

  def update
    @question = Question.find(params[:id])

    if @question.update(question_params)
      redirect_to @question
    else
      puts @question.errors.full_messages
      render :edit
    end

  end


  def destroy
    @question.destroy
    redirect_back(fallback_location: tests_path)
  end

  private

  def define_question
    @question = Question.find(params[:id])
  end

  def define_test
    @test = Test.find(params[:test_id])
  end

  def question_params
    params.require(:question).permit(:body)
  end

  def rescue_with_question_not_found
    render plain: 'Вопрос не найден'
  end
end
