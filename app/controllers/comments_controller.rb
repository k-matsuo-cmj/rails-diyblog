class CommentsController < ApplicationController
  def new
    @blog = Blog.find(params[:blog_id])
    @comment = @blog.comments.build
  end
  def create
    @blog = Blog.find(params[:blog_id])
    @comment = @blog.comments.build(comment_params)
    @comment.author_id = 2
    if @comment.save
      redirect_to blog_blog_url(params[:blog_id])
    else
      debugger
      render "comments/new"
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:description)
    end
end
