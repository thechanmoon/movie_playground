class TriviumSerializer < ActiveModel::Serializer
  attributes :id, :text, :user_id
  has_one :movie
end
