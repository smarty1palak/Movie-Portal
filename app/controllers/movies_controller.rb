class MoviesController < ApplicationController
  def show
    @movie = Movie.find(params[:name])
  end

  def book
  end
end
