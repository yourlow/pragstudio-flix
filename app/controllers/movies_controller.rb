class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])

    movie_params = params.require(:movie).permit(:title, :rating, :total_gross, :description, :released_on)

    @movie.update(movie_params)

    redirect_to @movie
  end
end
