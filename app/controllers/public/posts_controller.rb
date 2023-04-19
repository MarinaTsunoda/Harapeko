class Public::PostsController < ApplicationController
  def new
    @post = Post.new
    @tag_genres = TagGenre.all
  end

  def create
     @post = Post.new(post_params)
     @post.save
     flash[:notice] = "投稿に成功しました"
     redirect_to posts_path
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    flash[:notice] = "編集内容を保存しました"
    redirect_to post_path(@post.id)
  end

  def show
    @post = Post.find(params[:id])
  end

  def index
    if params[:favorite_id].present?
      @posts = current_user.posts.where(favorite_id: params[:favorite_id])
    elsif params[:visit_id].present?
      @posts = current_user.posts.where(visit_id: params[:visit_id])
    elsif params[:keyword].present?
      @posts = Post.where('caption LIKE ?', "%#{params[:keyword]}%")
    else
      @posts = Post.all
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:notice] = "投稿を削除しました"
    redirect_to posts_path
  end
  
  def search
    if params[:keyword].present?
      @photos = Photo.where('caption LIKE ?', "%#{params[:keyword]}%")
      @keyword = params[:keyword]
    else
      @photos = Photo.all
    end
  end
  private
  def post_params
    params.require(:post).permit(:user_id, :shop_id, :name, :price, :star, tag_ids: [])
  end
end
