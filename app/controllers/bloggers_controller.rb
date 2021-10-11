class BloggersController < ApplicationController
  def index
    @bloggers = User.all
  end

  def show
    @blogger = User.find(params[:id])
  end
end
