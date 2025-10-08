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
  ActiveRecord::Base.transaction do
    @like = Like.find_or_initialize_by(review: @review, user: current_user)
    @like.assign_attributes(like_params)
    if @like.save
      redirect_to @like, notice: "Like was successfully created."
    else
      render :index
    end
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
  params.permit(:review_id, :value)
end
end
