class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new
    @post.title = params[:title]
    @post.description = params[:description]
    @post.save
    redirect_to posts_path(@post)
    # Post.create(title: params[:posts][:title], :description params[:posts][:desription])
    # redirect_to posts_path
  end 
  # add create method here
end
