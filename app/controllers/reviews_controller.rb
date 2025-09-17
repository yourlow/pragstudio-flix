class ReviewsController < ApplicationController
  def index
    @movie = Movie.find(params[:movie_id])

    @reviews = @movie.reviews
  end


  def new
    @movie = Movie.find(params[:movie_id])

    @review = @movie.reviews.new
  end



  def create
    @movie = Movie.find(params[:movie_id])

    @review = @movie.reviews.create(params[:review])
  end
end
