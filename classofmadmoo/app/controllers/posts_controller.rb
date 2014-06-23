class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  def new
    @Post = Post.new
  end
end
