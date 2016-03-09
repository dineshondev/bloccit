class CommentsController < ApplicationController
  def create
    @topic = Topic.find(params[:topic_id])
    @post = @topic.posts.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    authorize @comment
    @comment.user_id = current_user.id
    if @comment.save
      redirect_to [@topic, @post], notice: "Comment saved successfully."
    else
      redirect_to [@topic, @post], notice: "comment failed to save."
    end
  end

  private 

  def comment_params
    params.require(:comment).permit(:body)
  end

end