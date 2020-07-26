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
  end
end
