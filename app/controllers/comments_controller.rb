class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
   if @comment.save
     redirect_to buildings_path(@comment.building)

   else
      @building = @comment.building
      @comments = @building.comments
     render "buildings/show"
   end
 end

 private
 def comment_params
  params.require(:comment).permit(:content).merge(user_id: current_user.id, building_id: params[:building_id] )
 end

end
