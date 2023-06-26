class Admin::TagGenresController < ApplicationController
  before_action :authenticate_admin!
  def create
    @tag_genre = TagGenre.new(tag_genre_params)
    @tag_genre.save
    flash[:notice] = "タグジャンルを作成しました"
    redirect_to admin_tags_path
  end

  def destroy
    @tag_genre = TagGenre.find(params[:id])
    @tag_genre.destroy
    flash[:notice] = "タグジャンルを削除しました"
    redirect_to admin_tags_path
  end

  def update
    @tag_genre = TagGenre.find(params[:id])
    @tag_genre.update(tag_genre_params)
    flash[:notice] = "タグジャンルを更新しました"
    redirect_to admin_tags_path
  end
  
  private
  def tag_genre_params
    params.require(:tag_genre).permit(:name)
  end
end
