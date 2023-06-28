class Admin::HomesController < ApplicationController
  before_action :authenticate_admin!
  def top
    # 投稿のいいね数ランキング
    @post_favorite_ranks = Post.find(Favorite.group(:post_id).order('count(post_id) desc').limit(30).pluck(:post_id))
    # タグの使用数
    @tag_ranks = Tag.find(Post.joins(:post_tag_relations).where(posts: { created_at: 0.days.ago.prev_week..0.days.ago.prev_week(:sunday)}).group(:tag_id).order('count(post_id) desc').limit(50).pluck(:tag_id))
  end
end
