class UsersController < ApplicationController
  before_action :admin_user,     only: :destroy

  def new
    @user = User.new
  end

  def create
    puts "*" * 200
    puts params[:user][:name]
    @user = User.new(name: params[:user][:name], email: params[:user][:email])
    if @user.save
      
      redirect_to root_url
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to users_url
  end

  private

    

    # Confirms an admin user.
    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end
  
end
