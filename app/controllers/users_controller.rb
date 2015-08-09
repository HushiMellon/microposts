class UsersController < ApplicationController
  
  def show # 追加
   @user = User.find(params[:id])
   @microposts = @user.microposts
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to the Sample App!"
       redirect_to @user # ここを修正
    else
      render 'new'
    end
  end
  
<<<<<<< HEAD
  def update
      @user = User.find(params[:id])
    if @user.update
      flash[:success] = "Welcome to the Sample App!"
       redirect_to @user # ここを修正
    else
      render 'new'
    end
=======
  def edit
    @user = User.find(params[:id])
    
>>>>>>> user-profile
  end
 
 def update
      @user = User.find(params[:id])
   if @user.update(user_params)
      flash[:success] = "Welcome to the Sample App!"
       redirect_to @user # ここを修正
    else
      render 'edit'
    end
 end

  private

  def user_params
<<<<<<< HEAD
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation, :area, :profile )
=======
    params.require(:user).permit(:name, :email, :password, :area, :profile ,
                                 :password_confirmation)
>>>>>>> user-profile
  end
end
