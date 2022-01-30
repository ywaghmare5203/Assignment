class Api::V1::PostController < Api::ApplicationController
	before_action :authenticate_request
	before_action :set_resources

	def index
		post = Post.all
		if post.present?
			render json: post, status: 200
		else
			render json: {message: "No Record Found"}
		end
	end

	def create
		post = Post.create(post_params)
		if post.save!
			render json: {post: post}
		else
			render json: {error: post.errors}
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
