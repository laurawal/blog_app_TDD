class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new 
    @post = Post.new
  end

  def create
    post = Post.new params[:post].permit(:name, :content)
    if post.save
      redirect_to posts_path
    else
      render 'new'
    end
  end
    
  def show
      @post = Post.find(params[:id])
  end

end
