class UserSerializer < ActiveModel::Serializer
  attributes :user_id, :number_of_posts

  def user_id
    object.id
  end

  def number_of_posts
    object.posts.count
  end
end
