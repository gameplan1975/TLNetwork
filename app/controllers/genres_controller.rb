class GenresController < ApplicationController
  before_action :login_check
  before_action :set_genre, only: [:show, :edit, :update, :destroy]

  def index
      @genres = Genre.all.page(params[:page]).per(5)
  end
  
  def new
    @genre = Genre.new
  end
  
  def edit
  end
  
  def create
    @genre = Genre.new(genre_params)
    if @genre.save
      redirect_to genres_url
    else
      render :new
    end
  end
  
  def update
    if @genre.update(genre_params)
      redirect_to genres_url
    else
      render :edit
    end
  end
  
  def destroy
    @genre.destroy
    redirect_to genres_url
    end
  
  private
  def set_genre
    @genre = Genre.find(params[:id])
  end

  def genre_params
    params.require(:genre).permit(:name)
  end

  def login_check
    if current_user == nil
      render :root
    end
  end
end
