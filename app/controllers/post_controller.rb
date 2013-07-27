class PostController < ApplicationController
  def index

  end

  def create
	@post = Post.new(post_params)

	@post.save
	redirect_to @post
  end

  def show
  	@post = Post.find(param[:id])
  end

  private
  	def post_params
  		params.require(:post).permit(:title, :text)
  	end
end
