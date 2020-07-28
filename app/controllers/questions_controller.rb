class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]

  def index
    @questions = Question.all.page(params[:page]).per(5)
    @genres= Genre.all
    #@questions = Question.all.includes(:genres).page(params[:page]).per(5)
    #で無理なのがわからん

  end
    
  def new
    @question = Question.new
    @genres = Genre.all
  end

  def show
    @question = Question.find_by(id: params[:id])
  end
    
  def edit
    @genres = Genre.all
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
    params.require(:question).permit(:name, :memo, :user_id, :genre_id, :year, :month)
  end
end