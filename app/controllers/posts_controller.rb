class PostsController < ApplicationController

  def index
    @search_input = params[:search]
    if @search_input != nil
      @posts = Post.search(@search_input)
    else
      @posts = Post.all()
    end
  end

  def new
    @post = Post.new()
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :author, :content)
  end

end
