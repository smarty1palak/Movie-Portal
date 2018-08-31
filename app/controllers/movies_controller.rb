class MoviesController < ApplicationController

  def new
    @movie = Movie.new
  end
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
    @show  = @movie.shows
  end

  def book
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      flash[:success] = "New Movie Added!"
      redirect_to '/users/1'
    end
  end

  private

    def movie_params
      params.require(:movie).permit(:name, :language, :genre)
    end
end
