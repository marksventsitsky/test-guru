class QuestionsController < ApplicationController

  before_action :define_question, only: [:show, :destroy]
  before_action :define_test, only: [:index, :new, :create]

  rescue_from ActiveRecord::RecordNotFound,
              with: :rescue_with_question_not_found

  def index
    render json: { questions: @test.questions }
  end

  def show
  end

  def new
  end

  def create
    question = @test.questions.new(question_params)
    if question.save

      redirect_to test_questions_url

    else
      flash[:notice] = 'Поле не может быть пустым!'
      redirect_to :action => 'new'

    end

  end


  def destroy
    @question.destroy
    render plain: 'Вопрос удален'
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
