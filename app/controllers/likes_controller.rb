class LikesController < ApplicationController
  before_action :set_review



def index
  @likes = Like.all
end

def show
  @like = Like.find(params[:id])
end

def new
  @like = Like.new(review: @review)
end

def create
  curr_like = Like.find_by(review: @review, user: current_user)

  @like = Like.new(like_params)
  @like.review = @review
  if @like.save
    redirect_to @like, notice: "Like was successfully created."
  else
    render :new
  end
end

def edit
  @like = Like.find(params[:id])
end


def destroy
  @like = Like.find(params[:id])
  @like.destroy
  redirect_to likes_url, notice: "Like was successfully destroyed."
end

private


  def set_review
    @review = Review.find(params[:review_id])
  end

def like_params
  params.require(:like).permit(:user_id, :movie_id, :value)
end
end
