class LikesController < ApplicationController

  def create
    @like = current_user.likes.new(likes_params)

    if !@like.save
      flash[:notice] = @like.errors.full_messages.to_sentence
    end

    #redirect_to @like.post
    redirect_to posts_path(params[:post_id])
  end

  def destroy
    @like = current_user.likes.find(params[:id])

    @like.destroy
    redirect_to posts_path(params[:post_id])
  end

  private

  def likes_params
    params.require(:like).permit(:post_id)
  end
end
