class User < ApplicationRecord
    has_secure_password

    validates :username, presence: true, uniqueness:true

    has_many :journals
    has_many :movies, through: :journals

    has_many :reviews
    has_many :movies, through: :reviews

    has_many :favorites
    has_many :movies, through: :favorites
end
