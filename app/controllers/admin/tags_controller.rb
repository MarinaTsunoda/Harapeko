class Admin::TagsController < ApplicationController
  before_action :authenticate_admin!
  def index
    @tag_genres = TagGenre.all
    @tag_genre = TagGenre.new
    @tag = Tag.new
  end

  def create
    @tag = Tag.new(tag_params)
    @tag.save
    flash[:notice] = "タグを作成しました"
    redirect_to admin_tags_path
  end
  
  def update
    @tag = Tag.find(params[:id])
    @tag.update(tag_params)
    flash[:notice] = "タグを編集しました"
    redirect_to admin_tags_path
  end
  
  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy
    flash[:notice] = "タグを削除しました"
    redirect_to admin_tags_path
  end
  
  private
  def tag_params
    params.require(:tag).permit(:name, :tag_genre_id)
  end
end
