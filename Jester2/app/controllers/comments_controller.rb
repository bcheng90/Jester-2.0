# TODO: Change to rails controller
class CommentsController < ApplicationController

  def edit
    @comment = Comment.find_by(id: params[:id])
  end

  def create
    @new_comment = Comment.new(comment_params)
    if @new_comment.save!
      redirect_to "/jokes/#{@new_comment.joke_id}"
    else
      [404, "WHY SO SERIOUS?"]
    end
  end

  def destroy
    Comment.find(params[:id]).destroy
    redirect_to joke_path
  end

  private

  def comment_params
    params.require(:comment).permit(:message).merge(user_id: current_user.id, joke_id: params[:joke_id])
  end
end

# Get Routes
# get '/comments/:id/edit' do
#   @comment = Comment.find_by(joke_id: params[:joke_id], id: params[:id])
#   erb :'comments/edit'
# end

# # Update Routes
# post '/comment' do
#   comment = Comment.create(message: params[:message], user_id: current_user.id, joke_id: params[:joke_id])
#   p comment
#  if request.xhr?
#     erb :'comments/new', layout: false, locals: {joke_id: comment.joke_id}
#   else
#     redirect "/joke/#{params[:joke_id]}"
#   end
# end

# put '/joke/:joke_id/comments/:id/edit' do
#   comment = Comment.find_by(joke_id: params[:joke_id], id: params[:id])
#   if comment
#     comment.update_attributes(message: params[:message])
#     comment.save
#     redirect "/joke/#{comment.joke_id}"
#   else
#     [404, "WHERE ARE THE EDITS?"]
#   end
# end

# delete '/joke/:joke_id/comments/:id/delete' do
#   comment = Comment.find_by(joke_id: params[:joke_id], id: params[:id])
#   if comment
#     comment.destroy
#     redirect "/joke/#{comment.joke_id}"
#   else
#     [404, "THE COMMENTS NOT HERE! HEHEHEHHEEhhehehe"]
#   end
# end