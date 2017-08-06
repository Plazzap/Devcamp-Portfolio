class CommentsController < ApplicationController
  def create
    @comment = current_user.comments.build(comment_parms)
  end
  
  private
  
  def comment_parms
    params.require(:comment).permit(:content)
  end
end
