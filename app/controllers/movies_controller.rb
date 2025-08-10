class MoviesController < ApplicationController
  def index
    @movies = [ "The Great Escape", "North by Northwest" ]
  end
end
