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
    @select = params[:selects]

    binding.irb

    #@question0 = Question.find_by(id: @select0)
    #@question1 = Question.find_by(id: @select1)
    #@question2 = Question.find_by(id: @select2)
    #@question3 = Question.find_by(id: @select3)

    #ゲーム数の追加
    @player = Player.find(current_user.player.id)
    game_number = @player.game + 1
    @player.update(game: game_number)
  end
end
