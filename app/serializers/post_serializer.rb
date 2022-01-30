class PostSerializer < ActiveModel::Serializer
  attributes :post_id, :comment_count, :likes_count

  def post_id
    object.id
  end

  def comment_count
    object.comments.count
  end

  def likes_count
    object.likes.count
  end
end
