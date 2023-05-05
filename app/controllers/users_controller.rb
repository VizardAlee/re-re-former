class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(username: params[:user][:username], email: params[:user][:email], password: params[:user][:password])

    if @user.save
      redirect_to new_user_path, notice: "Submission successful"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update(username: params[:user][:username], email: params[:user][:email], password: params[:user][:password])
      redirect_to edit_user_path(@user), notice: "Update successful"
    else
      render :edit, status: :unprocessable_entity
    end
  end
end
