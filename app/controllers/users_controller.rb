class UsersController < ApplicationController
  # Go to routes.rb and look for /users
  before_action :set_user, only: [:show, :update, :destroy]
  before_action :authenticate_request, only: [:index, :show, :update, :destroy]

  def index
    users = User.all
    render json: users, status: 200
  end

  def show
    render json: UserBlueprint.render(@user, view: :normal), status: 200
  end

  def create
    user = User.new(user_params)
    if user.save
      render json: user, status: :created
    else
      render json: user.errors, status: :unprocessable_entity
    end
  end

  def update
    if @user.update(user_params)
      render json: @user, status: :ok
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def destroy
    if @user.destroy
      render json: nil, status: :ok
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.permit(:username, :email, :first_name, :last_name, :password, :password_confirmation)
  end
end