class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]

  def index
    @questions = Question.all
  end
    
  def new
    @question = Question.new
  end

  def show
    @question = Question.find_by(id: params[:id])
    #@user = User.find_by(id: @question.user_id)
  end
    
  def edit
  end
    
  def create
    @question = Question.new(question_params)
    @question.user_id = current_user.id

    if @question.save
      redirect_to questions_path
    else
      render :new
    end
  end
    
  def update
    if @question.update(question_params)
      redirect_to questions_path
    else
      render :edit
    end
  end
    
  def destroy
    @question.destroy
    redirect_to questions_path
  end
    
  private
  def set_question
    @question = Question.find(params[:id])
  end
  
  def question_params
    params.require(:question).permit(:name, :memo, :accrual_date, :user_id, :genre_id)
  end
end