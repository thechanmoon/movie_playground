class ReviewSerializer < ActiveModel::Serializer
  # attributes :id, :comment, :rating
  attributes :id, :username, :comment, :rating, :date
  has_one :user
  has_one :movie

  def date
    byebug
    object.created_at.strftime("%B %Y")
  end

  def username
    byebug
    object.user.username
  end
end
