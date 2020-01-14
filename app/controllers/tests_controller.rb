class TestsController < ApplicationController

  before_action :define_test, only: [:show]

  def index
    render json: { tests: Test.all }
  end

  def show
  end



  private


  def define_test
    @test = Test.find(params[:id])
  end

end
