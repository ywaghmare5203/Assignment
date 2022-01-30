class Api::V1::PostController < Api::ApplicationController
	before_action :authenticate_request
	before_action :set_resources
	def create
		post = Post.create(post_params)
		if post.save!
			render json: {post: post}
		else
			render json: {post: post_params}
		end
	end

	def show
		render json: @post, status: 200
	end

	private

	def set_resources
		@post = Post.find_by(id: params[:id])
		params[:post][:user_id] = @current_api_user.id 
	end
	def post_params
	  params.require(:post).permit(:title, :description, :user_id)
	end
end
