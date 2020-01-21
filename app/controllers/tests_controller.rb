class TestsController < ApplicationController

  before_action :define_test, only: [:show, :update]

  def index
    @tests = Test.all
  end

  def show
  end

  def new
    @test = Test.new
  end

  def edit
    @test = Test.find(params[:id])
  end

  def create
    @test = Test.new(test_params)
    if @test.save
      redirect_to @test
    else
      puts @test.errors.full_messages
      render :new
    end
  end

  def update
    @test = Test.find(params[:id])

    if @test.update(test_params)
      redirect_to @test
    else
      render :edit
    end

  end

  def destroy
    @test = Test.find(params[:id])

    @test.destroy
    redirect_to test_path
  end

  private

  def define_test
    @test = Test.find(params[:id])
  end

  def test_params
    params.require(:test).permit(:title, :level, :user_id, :category_id)
  end

end