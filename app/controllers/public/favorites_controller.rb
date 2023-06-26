class Public::FavoritesController < ApplicationController
  before_action :post_params
  def create
    Favorite.create(user_id: current_user.id, post_id: params[:id])
    redirect_to posts_path
  end

  def destroy
    Favorite.find_by(user_id: current_user.id, post_id: params[:id]).destroy
    redirect_to posts_path
  end
  
  private
  def post_params
    @post = Post.find(params[:id])
  end
end
