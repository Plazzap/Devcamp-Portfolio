class CommentsController < ApplicationController
  def create
    @comment = curent_user.comments.build(comment_parms)
  end
  
  private
  
  def comment_parms
    params.require(:comment).permit(:content)
  end
end
