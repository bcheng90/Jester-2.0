class CommentsController < ApplicationController

  def edit
    @comment = Comment.find_by(id: params[:id])
  end

  def create
    @new_comment = Comment.new(comment_params)
    if @new_comment.save!
      redirect_to joke_path(@new_comment.joke_id)
    else
      [404, "WHY SO SERIOUS?"]
    end
  end

  def update
    @comment = Comment.find_by(id: params[:id])
    @comment.update(comment_params)
    if @comment.save!
      redirect_to joke_path(@comment.joke_id)
    else
      [404, "WHY SO SERIOUS?"]
    end
  end

  def destroy
    # TODO: Fix redirect to go back to joke_path of correct id
    Comment.find(params[:id]).destroy
    redirect_to root_path
  end

  private

  def comment_params
    params.require(:comment).permit(:message).merge(user_id: current_user.id, joke_id: params[:joke_id])
  end
end
