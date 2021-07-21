class UsersController < ApplicationController
  # before_action :set_user, only: %i[ show edit update destroy ]

  # # GET /users
  def index
    @users = User.all
  end

  # # GET /users/1 or /users/1.json`
  def show
    @id = params[:id]
    render :show2
  end

  def users_by_name
    @name = params[:name]
    render :show_by_name
  end

  def new
    @users = User.new
  end

  def create
    @users = User.new(users_params)
    if @users.save
      redirect_to controller: 'users', action: 'index'
    else
      render :new
    end
  end

  private

  def users_params
    params.require(:user).permit(:name, :occupation)
  end
end
