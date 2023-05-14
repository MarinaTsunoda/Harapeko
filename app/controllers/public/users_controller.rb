class Public::UsersController < ApplicationController
  def edit
    @user = current_user
  end

  def update
    @user = current_user
    @user.update(user_params)
     flash[:notice] = "お客様情報の更新が完了しました"
    redirect_to users_my_page_path
  end

  def my_page
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
  end
  private
  def user_params
    params.require(:user).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :postal_code, :address, :telephone_number, :email)
  end
end
