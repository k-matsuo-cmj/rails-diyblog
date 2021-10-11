class BlogsController < ApplicationController
  def index
    @blogs = Blog.paginate(page: params[:page], per_page: 5)
  end

  def show
    @blog = Blog.find(params[:id])
  end
end
