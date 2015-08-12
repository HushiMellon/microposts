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
  
  def edit
    @user = User.find(params[:id])
    
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
 
 def followings
  # @user = current_user.following_relationships.find_by(follower_id: params[:user_id]) 
   # @followings = @user.followed
 @followings = current_user.following_users
   
   
 end
 
 def followed
    # @user = current_user.followed_relationships.find_by(followed_id: params[:user_id]) 
 @followed = current_user.followed_users 
 end
 
  private

  def user_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation, :area, :profile )

  end
end
