class MoviesController < ApplicationController
  before_action :require_signin, except: [ :index, :show ]
  before_action :require_admin, except: [ :index, :show ]

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

    if @movie.update(movie_params)
      flash[:notice] = "Event successfully updated!"
      redirect_to @movie
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def new
    @movie = Movie.new
  end


  def create
    @movie = Movie.new(movie_params)

    if @movie.save
      return redirect_to @movie, notice: "Event sucessfully created!"
    else
      return render :new, status: :unprocessable_entity
    end


    redirect_to @movie
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to movies_path, status: :see_other
  end


  private


  def movie_params
    params.require(:movie).permit(:title, :rating, :total_gross, :description, :released_on, :duration, :director, :image_file_name)
  end
end
