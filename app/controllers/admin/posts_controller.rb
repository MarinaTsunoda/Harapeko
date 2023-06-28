class Admin::PostsController < ApplicationController
  before_action :authenticate_admin!
  
  def index
    @tag_genres = TagGenre.all
     if params[:user_id].present?
      @user = User.find(params[:user_id])
      @posts = Post.where(user_id: params[:user_id]).page(params[:page])
     else
      @posts = Post.all.page(params[:page])
     end
  end

  def show
    @post = Post.find(params[:id])
    @tags = @post.tags
    begin
      id = @post.shop_id

      require 'open-uri'
      require 'json'
      require 'active_support'
      require 'active_support/core_ext'

      uri = "http://webservice.recruit.co.jp/hotpepper/gourmet/v1/"
      api_key = ENV['API_KEY']

      url = uri << "?key=" << api_key << "&hit_per_page=100" << "&id=" << URI.encode_www_form_component(id)

      uri = URI.parse(url)
      https = Net::HTTP.new(uri.host, 443)
      https.use_ssl = true
      request = Net::HTTP::Get.new(uri.request_uri)
      response = https.request(request)

      hash = Hash.from_xml response.body
      if hash.has_key?("results")
        if hash["results"]["results_available"].to_i > 0
          
          @shop = hash.dig("results","shop")
        end
      else
        @error = "エラーが発生しました"
      end
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:notice] = "投稿を削除しました"
    redirect_to admin_posts_path
  end
  
end
