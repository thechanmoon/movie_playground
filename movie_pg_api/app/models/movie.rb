class Movie < ApplicationRecord
    has_many :journals
    has_many :users, through: :journals

    has_many :reviews
    has_many :users, through: :reviews

    has_many :favorites
    has_many :users, through: :favorites

    has_many :trivia

    validates :tmdb_id, presence: true, uniqueness: true
end
