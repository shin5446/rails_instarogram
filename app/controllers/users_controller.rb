class UsersController < ApplicationController
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "ユーザー登録が完了しました"
      redirect_to user_path(@user.id)
    else
      render 'new'
    end
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if current_user.id == @user.id
      if @user.update(user_params)
        redirect_to @user, notice: "プロフィールを編集しました！"
      else
        render 'edit'
      end
    else
      flash[:danger] = "他人のプロフィールは編集できません！"
      redirect_to new_session_path
    end
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation, :user_image)
  end

end