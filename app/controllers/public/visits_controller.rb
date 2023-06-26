# class Public::VisitsController < ApplicationController
# before_action :authenticate_user!
#  def create
#     post = Post.find(params[post_id])
#     visit = current_user.visits.new(post_id: post.id)
#     visit.save
#     redirect_to posts_path
#  end
#  def destroy
#     post = Post.find(params[post_id])
#     visit = current_user.visits.find_by(post_id: post.id)
#     visit.destroy
#     redirect_to posts_path
#  end
# end
