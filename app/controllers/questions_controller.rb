class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @test = Test.find params[:test_id]
    @question = @test.questions.new
  end

  def create
    test = Test.find params[:test_id]
    @question = test.questions.new(question_params)

    respond_to do |format|
      if @question.save
        format.html { redirect_to [test, @question], notice: 'Question was successfully created.' }
        format.json { render :show, status: :created, location: @question }
      else
        format.html { render :new }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  private

    def set_question
      @test = Test.find params[:test_id]
      @question = Question.find params[:id]
    end

    def question_params
      params.require(:question).permit(:text)
    end

end
