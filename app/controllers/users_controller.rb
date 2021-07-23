class UsersController < ApplicationController
  # before_action :set_user, only: %i[ show edit update destroy ]

  # # GET /users
  def index
    @users = User.all
  end

  def show
    @users = User.find(params[:id])
  end

  def users_by_name
    @name = params[:name]
    render :show_by_name
  end

  def new
    @users = User.new
  end

  def edit
    @users = User.find(params[:id])
  end

  def method_name; end

  def create
    @users = User.new(users_params)
    if @users.save
      redirect_to controller: 'users', action: 'index'
    else
      render :new
    end
  end

  def multiple_display
    @users = User.find(params[:ids])
    @params = params
  end

  def update
    @users = User.find(params[:id])
    if @users.update(users_params)
      redirect_to controller: 'users', action: 'index'
    else
      render :edit
    end
  end

  def confirm
    @users = User.find(params[:id])
  end

  def destroy
    @users = User.find(params[:id])
    @users.destroy
    redirect_to controller: 'users', action: 'index'
  end

  def destroy_multiple
    users_ids = params[:user_ids]
    if users_ids.nil?
      render :error
    else
      redirect_to controller: 'users', action: 'multiple_display', :ids=>users_ids
    end
  end

  def delete_multiple
    User.destroy(params[:format].split("/"))
    redirect_to controller: 'users', action: 'index'

  end

  private

  def users_params
    params.require(:user).permit(:name, :occupation)
  end
end
