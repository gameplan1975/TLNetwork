class PlayersController < ApplicationController
  before_action :set_player, only: [:show, :edit, :update, :destroy]
  before_action :default_date_setting, only: [:create]

  def index
    @players = Player.all.page(params[:page]).per(5)
  end
    
  def new
    @player = Player.new
  end

  def show
    @player = Player.find_by(id: params[:id])
    @questions = Question.where(user_id: @player.user.id).page(params[:page]).per(3)
  end
    
  def edit
  end
    
  def create
    @player = Player.new(player_params)
    #この辺りをストロングパラメータにしたい
    @player.user_id = current_user.id
    @player.game = 0
    @player.correct = 0
    @player.total_time = 0

    if @player.save
      redirect_to players_path
    else
      render :new
    end
  end
    
  def update
    if @player.update(player_params)
      redirect_to players_path
    else
      render :edit
    end
  end
    
  def destroy
    @player.destroy
    redirect_to players_path
  end
    
  private
  def set_player
    @player = Player.find(params[:id])
  end
  
  def player_params
    params.require(:player).permit(:name, :user_id, :favorite_category, :game, :correct, :total_time, :comment)
  end

  def default_date_setting
    #できれば初期設定はここでやりたい
  end 
end