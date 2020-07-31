class GamesController < ApplicationController

  def prepare
    @genres = Genre.all
  end

  def play
    @category = params[:select_genre]
    @genre = Genre.find_by(id: @category)
    @questions = Question.where(genre_id: @category).order("RANDOM()").limit(4)
  end

  def result
    @answer = params[:answer]
    @select0 = params[:select0]
    @select1 = params[:select1]
    @select2 = params[:select2]
    @select3 = params[:select3]

    @questiona = Question.find(@answer)
    @question0 = Question.find(@select0)
    @question1 = Question.find(@select1)
    @question2 = Question.find(@select2)
    @question3 = Question.find(@select3)

    #binding.irb

    #ゲーム数の追加
    #@player = Player.find(current_user.player.id)
    #game_number = @player.game + 1
    #@player.update(game: game_number)
  end
end
