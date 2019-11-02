class CommentsController < ApplicationController
  skip_before_action :authenticate_author!

  def create
    @note = Note.find(params[:note_id])
    @comment = @note.comments.create(comment_params)
    redirect_to note_path(@note)
  end

  private

  def comment_params
    params.require(:comment).permit(:commenter, :email, :content)
  end
end