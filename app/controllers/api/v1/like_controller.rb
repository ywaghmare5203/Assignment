class Api::V1::LikeController < Api::ApplicationController
	before_action :authenticate_request
	before_action :set_resources

	def create
		return generic_error unless @post
		@like = Like.find_or_create_by(like_params)
		puts "-----------------------#{@like.inspect}"
		if @like.present?
			@like.update!(like_params)
			render json: {message: "Successfully Like This Post"}
		else
			render json: {error: "Something Went Wrong"}
		end
	end

	private
	def set_resources
		@post = Post.find_by(id: params[:like][:likeable_id])
		params[:like][:user_id] = @current_api_user.id if @current_api_user.present?
	end

	def like_params
	  params.require(:like).permit(:likeable_type, :user_id, :likeable_id)
	end
end
