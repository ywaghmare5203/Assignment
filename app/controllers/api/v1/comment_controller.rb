class Api::V1::CommentController < Api::ApplicationController
	before_action :authenticate_request
	before_action :set_resources

	def create
		return generic_error unless @post
		comment = Comment.create(comment_params)
		if comment.save!
			render json: {comment: comment}
		else
			render json: {comment: comment}
		end
	end

	private

	def set_resources
		@post = Post.find_by(id: params[:comment][:post_id])
		params[:comment][:user_id] = @current_api_user.id 
	end

	def comment_params
	  params.require(:comment).permit(:comment_text, :post_id, :user_id)
	end
end
