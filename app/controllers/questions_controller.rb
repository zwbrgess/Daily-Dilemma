class QuestionsController < ApplicationController
  def index
    @questions = Question.all.order(created_at: :desc)
  end

  def show
    @question = Question.find(params[:id])
    @comments = @question.comments.order(created_at: :asc)
  end

  def create
    @question = Question.new(question_params)

    if @question.save
      redirect_to questions_path, notice: 'Question was successfully created.'
    else
      render :index
    end
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to questions_path, notice: 'Question was successfully deleted.'
  end

  private

  def question_params
    params.require(:question).permit(:content)
  end
end
