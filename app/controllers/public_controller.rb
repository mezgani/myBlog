class PublicController < ApplicationController
  def index
    @posts = Post.all
    @pagy, @records = pagy(Post.all)
  end
end
