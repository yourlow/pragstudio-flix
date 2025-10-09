class FavouritesController < ApplicationController
  before_action :set_movie

  def create
    ActiveRecord::Base.transaction do
      @favourite = Favourite.find_or_initialize_by(movie: @movie, user: current_user)
      if @favourite.save
        redirect_to @movie, notice: "Favourite was successfully created."
      else
        redirect_to @movie, error: "There was an error favouriting the movie"
      end
    end
  end

  def destroy
    @favourite = Favourite.find(params[:id])
    @favourite.destroy
    redirect_to @movie, notice: "Favourite was successfully removed."
  end

  private

  def set_movie
    @movie = Movie.find(params[:movie_id])
  end
end
