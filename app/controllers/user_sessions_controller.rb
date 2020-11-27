class UserSessionsController < ApplicationController
  

  def new
    @user = User.new
  end

  def create
    if @user = login(params[:email], params[:password])
      redirect_to mypage_path
      flash[:success] = 'ログインしました' 
    else
      flash.now[:danger] = 'ログインできませんでした'
      render :new
    end
  end

  def destroy
    logout
    flash[:notice] = 'ログアウトしました'
    redirect_to root_path
  end
end
