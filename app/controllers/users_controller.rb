class UsersController < ApplicationController
  # before_action :set_user, only: %i[ show edit update destroy ]

  # # GET /users or /users.json
  def index
    @users = User.all
  end
  
  # # GET /users/1 or /users/1.json
  def show
  end

end
