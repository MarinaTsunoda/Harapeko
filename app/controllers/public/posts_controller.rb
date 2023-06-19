class Public::PostsController < ApplicationController
  def new
    @post = Post.new
    @tag_genres = TagGenre.all
   
    begin
      id = params[:select_shop]

      require 'open-uri'
      require 'json'
      require 'active_support'
      require 'active_support/core_ext'

      uri = "http://webservice.recruit.co.jp/hotpepper/gourmet/v1/"
      api_key = ENV["API_KEY"]

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
      http = Net::HTTP.new(uri.host, uri.port)
      request = Net::HTTP::Get.new(uri.request_uri)
      response = http.request(request)

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
    @tag_genres = TagGenre.all

    begin
      id = params[:select_shop]

      require 'open-uri'
      require 'json'
      require 'active_support'
      require 'active_support/core_ext'

      uri = "http://webservice.recruit.co.jp/hotpepper/gourmet/v1/"
      api_key = ENV['API_KEY']

      url = uri << "?key=" << api_key << "&hit_per_page=100" << "&id=" << URI.encode_www_form_component(id)

      uri = URI.parse(url)
      http = Net::HTTP.new(uri.host, uri.port)
      request = Net::HTTP::Get.new(uri.request_uri)
      response = http.request(request)

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
    redirect_to posts_path
  end

  def search
    if params[:keyword].present?
      @posts = Post.where('caption LIKE ?', "%#{params[:keyword]}%")
      @keyword = params[:keyword]
    elsif params[:area_names].present?
      @posts = Post
      params[:area_names].each_with_index do |area, index|
        if index == 0
          @posts = @posts.where('shop_large_area LIKE ?', "%#{area}%")
        else
          @posts = @posts.or(Post.where('shop_large_area LIKE ?', "%#{area}%"))
        end
      end
    elsif params[:tag_ids].present?
      @posts = Post
      params[:tag_ids].each_with_index do |tag, index|
        if index == 0
          @posts = @posts.where(tag_id: tag.id)
        else
          @posts = @posts.or(Post.where(tag_id: tag.id))
        end
      end
    else
      @posts = Post.all
    end
  end

  def favorite
    @user = current_user
    favorites = Favorite.where(user_id: @user.id).pluck(:post_id)
    @posts = Post.find(favorites)
  end

  def tag_search
    @tag_genres = TagGenre.all
  end

  private
  def post_params
    params.require(:post).permit(:user_id, :shop_id, :name, :price, :star, :image, :shop_large_area, :shop_midnight_meal, tag_ids: [])
  end
end
