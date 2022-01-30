class Api::V1::UserController < Api::ApplicationController
	skip_before_action :authenticate_request
  
  def create
    @user = User.new(user_params)
    if @user.save!
      render json: @user, status: :created
    else
      render json: { errors: @user.errors.full_messages },
             status: :unprocessable_entity
    end
  end

 # skip_before_action :authenticate_request
  
  def login
    command = AuthenticateUser.call(
                params[:user][:email], params[:user][:password])
    if command.success?
      render json: { auth_token: command.result }
    else
      render json: { error: command.errors }, status: :unauthorized
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
