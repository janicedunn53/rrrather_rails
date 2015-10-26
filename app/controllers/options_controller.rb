class OptionsController < ApplicationController
  def new
    @question = Question.find(params[:question_id])
    @option = @question.options.new
  end

  def create
    @question = Question.find(params[:question_id])
    @option = @question.options.new(option_params)
    if @option.save
      redirect_to question_path(@option.question)
    else
      render :new
    end
  end

  def upvote
    @option = Option.find(params[:id])
    @option.votes.create
    redirect_to question_path(@option.question)
  end

  private
  def option_params
    params.require(:option).permit(:scenario)
  end
end
