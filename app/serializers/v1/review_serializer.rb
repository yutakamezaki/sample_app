class V1::ReviewSerializer < ActiveModel::Serializer
  attributes :id, :text, :posted_at, :user, :likes_count, :rating, :is_liked
  has_one :user, serializer: ::V1::UserSerializer

  def posted_at
    object.created_at
  end

  def rating
    object.evaluation_point
  end

  def is_liked
    current_user = scope
    if current_user
      object.review_evaluations.where(user_id: current_user.id).present?
    else
      false
    end
  end
end
