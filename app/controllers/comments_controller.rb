class CommentsController < ApplicationController

  def create
   @comment = current_user.comments.new(comment_params)
   if !@comment.save
      flash[:notice] = @comment.errors.full_messages.to_sentence
   end

   redirect_to posts_path(params[:post_id])

  end

  def destroy
    @comment = current_user.comments.find(params[:id])
    @comment.destroy
    redirect_to posts_path(params[:post_id])

  end


  private



  # def create
  #   @post = Post.find(params[:post_id])
  #   @comment = @post.comments.create(params.require(:comment).permit(:content))
  #   if !@comment.save
  #     flash[:notice] = @comment.errors.full_messages.to_sentence
  #   end

  #   redirect_to post_path(params[:post_id])
  #   #redirect_to post_path(@post)
  # end


  def comment_params
    params
    .require(:comment)
    .permit(:content)
    .merge(post_id: params[:post_id])
  end
end
