class Public::UsersController < ApplicationController
  before_action :authenticate_user!
  def edit
    @user = current_user
    unless @user.id == current_user.id
      redirect_to posts_path
    end
  end

  def update
    @user = current_user
    if @user.update(user_params)
      flash[:notice] = "お客様情報の更新が完了しました"
      redirect_to users_my_page_path
    else
      flash[:notice] = "必要情報を入力してください"
      render :edit
    end
  end

  def my_page
    @posts = current_user.posts.all
  end
  
  def unsubscribe
  end

  def withdraw
    current_user.update(is_deleted:true)
    reset_session
    redirect_to root_path, notice: '退会処理を実行いたしました'
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.posts.all
  end

  private
  def user_params
    params.require(:user).permit(:user_name, :user_introduction, :password, :last_name, :first_name, :last_name_kana, :first_name_kana, :postal_code, :address, :telephone_number, :email)
  end
end
