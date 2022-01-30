class Api::V1::UserController < Api::ApplicationController
	skip_before_action :authenticate_request

  def index
    user = User.all
    if user.present?
      render json: user, status: 200
    else
      render json: {message: "No Record Found"}
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save!
      render json: @user, status: :created
    else
      render json: { errors: @user.errors.full_messages },
             status: :unprocessable_entity
    end
  end
  
  def login
    command = AuthenticateUser.call(params[:user][:email], params[:user][:password])
    if command.success?
      render json: { auth_token: command.result }
    else
      render json: { error: command.errors }, status: :unauthorized
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :username, :password, :password_confirmation)
  end
end
