class MovieSerializer < ActiveModel::Serializer
  attributes :id, :username, :title, :overview, :poster_path, :tmdb_id
end
