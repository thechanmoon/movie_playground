class JournalSerializer < ActiveModel::Serializer
  attributes :id, :title, :text, :movie_id, :user_id
  has_one :user
  has_one :movie
end
