class JournalSerializer < ActiveModel::Serializer
  attributes :id, :title, :text
  has_one :user
  has_one :movie
end
