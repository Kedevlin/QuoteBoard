class CommentsController < ApplicationController


  private

  def comment_params
    params.permit(comment:[:body, :commenter_id, :quote_id])
  end

end
