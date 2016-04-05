class FavoritesController < ApplicationController

  def create
    post = Post.find(params[:post_id])
    favorite = current_user.favorites.build(post: post)
    authorize favorite
    if favorite.save
      flash[:notice] = "Post added to favorites."
      redirect_to [post.topic, post]
    else
      flash[:error] = "There are errors while favoriting the post"
      redirect_to [post.topic, post]
    end
  end

  def destroy
    post = Post.find(params[:post_id])
    favorite = current_user.favorites.build(post: post)
    authorize favorite
    if favorite.destroy
      flash[:notice] = "Post removed from favorites."
      redirect_to [post.topic, post]
    else 
      flash[:error] = "There are errors while unfavoriting the post"
      redirect_to [post.topic, post]
    end    
  end

end
